import copy
import json
import os
import statistics
import threading
import time
from datetime import datetime
from multiprocessing import Queue

import numpy as np
import tensorflow as tf
from tensorflow import keras

from format_data import generate1
from io_data import load_processed

'''
TODO
> Quality calculation for: 1 > quality > 0

'''


class SensorData:
    def __init__(self, sensor):
        self.sensor_name = sensor
        self.type = ""

        self.frequency = -1

        # {"value", "time", "type", "sensor"}
        self.__raw_data = []
        self.__data = []
        self.__last_pointer = -1

        self.__init_buffer = []
        self.__init_ok = False

    def __populate(self):
        intervals = {}
        for i in range(len(self.__init_buffer) - 1):
            a_time = self.__init_buffer[i]["time"]
            b_time = self.__init_buffer[i + 1]["time"]

            interval = b_time - a_time
            interval = round(int(interval * (60 * 1440)), -1)
            if str(interval) in intervals:
                intervals[str(interval)] += 1
            else:
                intervals[str(interval)] = 1

        best_interval = int(max(intervals, key=intervals.get))

        start_idx = -1
        for i in range(len(self.__init_buffer) - 1):
            a_time = self.__init_buffer[i]["time"]
            b_time = self.__init_buffer[i + 1]["time"]

            interval = b_time - a_time
            interval = round(int(interval * (60 * 1440)), -1)

            if interval == best_interval:
                start_idx = i
                break

        self.__init_ok = True

        appended_indexes = []
        for i in range(start_idx, 10):
            appended_indexes.extend(self.append(self.__init_buffer[i]))

        return appended_indexes

    def append_raw(self, new_entry):
        self.__raw_data.append(new_entry)

    def append(self, new_entry):

        appended_indexes = []
        new_entry["prediction"] = False

        if self.type == "":
            self.type = new_entry["type"]

        if not self.__init_ok:
            self.__init_buffer.append(new_entry)
            if len(self.__init_buffer) == 10:
                appended_indexes.extend(self.__populate())
        else:
            del new_entry["sensor"]
            del new_entry["type"]

            last_measurement = self.getLast()

            if last_measurement is not None:
                current_measurement_time = new_entry["time"]
                last_measurement_time = last_measurement["time"]
                current_time_difference = round((current_measurement_time - last_measurement_time) * (60 * 1440), 2)

                # GET TIME STEP FROM FIRST TWO MEASUREMENTS
                if self.frequency == -1:
                    self.frequency = round(current_time_difference, -1)
                    to_append = True
                # CALCULATE IF DATA IS LATE OR AHEAD
                else:
                    max_accepted = float(self.frequency) + 1.5
                    min_accepted = float(self.frequency) - 1.5

                    if current_time_difference > max_accepted or current_time_difference < min_accepted:
                        to_append = False

                        # HERE I figure out if the data is actually in the right place,
                        # the difference may be right but maybe it was influenced by past missing data

                        # Example: data is sent with a interval of 2min (120sec), so it has more or less 120sec
                        # difference between them, if a value is missing but the next one is present the time
                        # difference between the last value becomes 4min (240sec), more than we expect, but is actually
                        # in the right time, so we should acknowledge it as a correct value.

                        temp_multiplier = int(current_time_difference / self.frequency)
                        if temp_multiplier >= 1:
                            multiplier = (self.frequency * temp_multiplier) / (60 * 1440)
                            temp_time = last_measurement_time + multiplier
                            t = (temp_time - current_measurement_time) * (60 * 1440)

                            if 1.5 >= t >= -1.5:
                                nones_to_insert = temp_multiplier - 1
                                for i in range(nones_to_insert):
                                    temp_time = last_measurement_time + (((i + 1) * self.frequency) / (60 * 1440))
                                    self.__data.append({"value": None, "time": temp_time, "prediction": False})
                                    appended_indexes.append(len(self.__data) - 1)
                                to_append = True

                    else:
                        to_append = True
            else:
                to_append = True

            if to_append:
                self.__data.append(new_entry)
                self.__last_pointer = len(self.__data) - 1
                appended_indexes.append(len(self.__data) - 1)

            self.append_raw(new_entry)

        return appended_indexes

    def getLast(self):
        if len(self.__data) == 0:
            return None
        else:
            return self.__data[self.__last_pointer]

    def get(self, idx):
        if idx <= len(self.__data) - 1:
            return self.__data[idx]
        else:
            return None

    def put_prediction(self, value, index):
        if index < len(self.__data):
            self.__data[index]["prediction"] = True
            self.__data[index]["true_value"] = copy.deepcopy(self.__data[index]["value"])
            self.__data[index]["value"] = value

    def get_values(self):
        return [i["value"] for i in self.__data], [i["time"] for i in self.__data]

    def get_raw_values(self):
        return [i["value"] for i in self.__raw_data], [i["time"] for i in self.__raw_data]

    def get_raw_values_w_predictions(self):
        return [i["value"] for i in self.__data if i["value"] is not None], \
            [i["time"] for i in self.__data if i["value"] is not None]

    def get_values_without_predictions(self):
        values = []
        times = []
        for i in self.__data:
            if i["prediction"] is False:
                values.append(i["value"])
                times.append(i["time"])
            else:
                values.append(None)
                times.append(i["time"])

        return values, times


class SensorHandler:
    def __init__(self, tide_period, run_periods_self, run_periods_others, cdf_threshold=0.998, skip_period=0, ignore_miss=False):
        # Data Arch
        self.sensors_data = {}
        self.tide_period = tide_period
        self.run_periods_self = run_periods_self
        self.run_periods_others = run_periods_others
        self.skip_period = skip_period
        self.ignore_miss = ignore_miss

        # Prediction Thread (generates predictions every time it is possible)
        self.predictions_data = {}  # {key=sensor, value={key=index, value=[(path, type, p)]}}
        self.prediction_block = PredictionBlock()

        # Quality calculation & Failure Detection
        self.quality_data = {}  # {key=sensor, value={key=index, value=quality}}
        self.cdf_threshold = cdf_threshold
        self.quality_block = QualityBlock(self.cdf_threshold)

        # Threads
        self.prediction_queue = Queue(maxsize=1000)
        self.__prediction_thread = threading.Thread(target=self.__prediction_t)
        self.__prediction_thread.start()
        print("STARTS PREDICTIONS")

        self.quality_queue = Queue(maxsize=1000)
        self.__quality_thread = threading.Thread(target=self.__quality_t)
        self.__quality_thread.start()

    def append(self, data):
        sensor = data["sensor"]

        if sensor not in self.sensors_data:
            self.sensors_data[sensor] = SensorData(sensor)
            self.predictions_data[sensor] = {}
            self.quality_data[sensor] = {}

        appended_indexes = self.sensors_data[data["sensor"]].append(data)

        if len(appended_indexes) > 0:
            self.prediction_queue.put((appended_indexes, sensor))

    def __prediction_t(self):
        while True:
            values = self.prediction_queue.get()
            inserted_values_indexes = values[0]
            sensor = values[1]

            for index in inserted_values_indexes:
                values = self.prediction_block.try_prediction(index, sensor, self.sensors_data, self.tide_period,
                                                              self.run_periods_self, self.run_periods_others,
                                                              self.skip_period, self.ignore_miss)
                # print(self.skip_period)
                if len(values) > 0:
                    if index not in self.predictions_data[sensor]:
                        self.predictions_data[sensor][index] = []
                    self.predictions_data[sensor][index].extend(values)
                    self.quality_queue.put((sensor, index))

    def __quality_t(self):
        while True:
            sensor, index = self.quality_queue.get()
            predictions = self.predictions_data[sensor][index]
            actual = self.sensors_data[sensor].get(index)

            quality = 1
            if actual['value'] is None:
                quality = 0
            elif not actual['prediction']:
                m = actual['value']
                p = [i[2] for i in predictions]
                errors = self.quality_block.calculate_error(m, p)
                faulty, probabilities = self.quality_block.fault_detection(predictions, errors)

                to_replace = False
                if not faulty:
                    quality = self.quality_block.quality_calculation(probabilities)
                else:
                    quality = 0
                    now = datetime.now()

                    _, true_t = self.sensors_data[sensor].get_raw_values()
                    temp = self.sensors_data[sensor].get(index)['time']
                    true_index = true_t.index(temp)

                    print(f'[{now:%Y-%m-%d %H:%M:%S}] [{sensor} at index: {true_index} FAULT DETECTED]')

                    to_replace = True

                if to_replace:
                    mean_predictions = statistics.mean(p)
                    self.sensors_data[sensor].put_prediction(mean_predictions, index)

            self.quality_data[sensor][index] = quality


class QualityBlock:
    def __init__(self, cdf_threshold):
        self.cdf_threshold = cdf_threshold

    @staticmethod
    def load_cdf(path):
        return load_processed([path + "\\cdf.npz"])

    @staticmethod
    def calculate_cdf_probability(x, cdf):
        x_index = np.searchsorted(cdf['x'], x, side="left")

        if x_index == len(cdf['y']):
            v = 1
        else:
            v = cdf['y'][x_index]

        return v

    @staticmethod
    def calculate_error(actual, predictions):
        errors = []
        for p in predictions:
            errors.append(pow(p - actual, 2))
        return errors

    def fault_detection(self, predictions, errors):
        threshold = self.cdf_threshold

        isSimilar = []
        probabilities = []
        for i in range(len(errors)):
            p = predictions[i]
            error = errors[i]
            cdf = self.load_cdf(p[0])
            ann_type = p[1]

            probability = self.calculate_cdf_probability(error, cdf)
            probabilities.append(probability)

            if probability < threshold:
                isSimilar.append((True, error, probability, ann_type))
            else:
                isSimilar.append((False, error, probability, ann_type))

        falses = [i for i in isSimilar if i[0] is False]
        trues = [i for i in isSimilar if i[0] is True]
        if len(falses) > 0:
            if len(falses) == 1:
                """
                Different from 1 prediction.

                @Goncalo
                We start by considering the case where a single prediction is different from m. This can be the
                prediction that was produced based on past measurements of only the target sensor, the prediction
                that uses measurements from target and neighbour sensors, or, finally, the prediction based only
                on measurements from neighbour sensors. In the first case, it is possible to conclude with a high
                probability that the target sensor is being affected by a real physical event that produces a large
                difference with respect to past values, hence the measurement is not an outlier. This is supported
                by the fact that this event was reflected in the measurements of the other sensors and consequently
                on the predictions that use these measurements, both of which similar to m.

                @Joao
                Anything new to the logic of fault detection is added here
                """
                return False, probabilities
            elif len(falses) == 2:
                """
                Different from 2 predictions.

                @Goncalo
                If m is significantly different from two predictions (and hence similar to a singular prediction),
                then only two cases are relevant and one is unlikely to occur. If m is similar to the prediction
                based on the target measurements, then the measurement is likely correct and the difference with
                the other predictions can be explained by an event affecting the neighbour sensors or a severe
                fault affecting only one of them. If m is similar to the prediction based only on the neighbours
                measurements, then it is possible to conclude that an event is forcing all measurements to take
                unexpected values. The prediction based only on neighbour sensors uses as input these unexpected
                values, which justifies that it is similar to m. On the other hand, the other predictions include the
                target past measurements that force the model to produce a value that is closer to the one that
                would be expected without an event. The case in which m is similar only to the prediction using all
                sensors is unlikely to occur because it does not make sense that a prediction using only neighbour
                sensors and the prediction using only the target sensor are similar to m but that one is not. 

                @Joao
                Anything new to the logic of fault detection is added here
                """
                return False, probabilities
            else:
                """
                Different from all predictions.

                @Goncalo
                Finally, the situation that is indicative of a faulty measurement m is the last possible one, when
                all predictions are different from m.

                @Joao
                Anything new to the logic of fault detection is added here
                """
                return True, probabilities
        else:
            return False, probabilities

    def quality_calculation(self, probabilities):
        return 1 - statistics.mean(probabilities)


class PredictionBlock:
    def __init__(self):
        self.models = self.startup_models()
        pass

    def get_model(self, sensor, typeM, size):
        if size == "others":
            sizeM = "neighbours"
        else:
            sizeM = size

        if sensor in self.models:
            models = [i for i in self.models[sensor] if sizeM == i['sizeM'] and typeM == i['typeM']]

            best_model = models[0]
            for model in models:
                if model['loss'] < model['loss']:
                    best_model = model

            return best_model
        return None

    def try_prediction(self, appended_index, sensor, sensors, tide_period, run_periods_self,
                       run_periods_others, skip_period, ignore_miss):
        
        # Check if we have atleast 750min of data (1tide period)
        sensor_names = list(sensors.keys())
        min_time = sensors[sensor].get(0)["time"] + ((tide_period+50) / float(1440))
        target_time = sensors[sensor].get(appended_index)["time"]
        diff = target_time - min_time
        # print(diff)
        if diff > 0:
            diffs = []
            
            for sn in sensor_names:
                current_min_time = sensors[sn].get(0)["time"] + ((tide_period+50) / float(1440))
                current_diff = target_time - current_min_time
                diffs.append(current_diff)
            diffs = [i for i in diffs if i > 0]

            if len(diffs) != len(sensor_names):
                print("return null")
                return []
        else:
            return []

        # Order by name
        sensor_names.sort()

        main_sensor_index = sensor_names.index(sensor)
        values = []
        times = []
        

        for sensor_name in sensor_names:
            if not ignore_miss:
                temp_v, temp_t = sensors[sensor_name].get_values()
                values.append(temp_v)
                times.append(temp_t)
            else:
                temp_v, temp_t = sensors[sensor_name].get_raw_values()
                #sensors[sensor_name].get_raw_values_w_predictions()
                values.append(temp_v)
                times.append(temp_t)
        
        # Switch sensor[0] to the main sensor
        tmp = np.copy(values[0])
        print(tmp)
        values[0] = values[main_sensor_index]
        values[main_sensor_index] = tmp

        tmp = np.copy(times[0])
        times[0] = times[main_sensor_index]
        times[main_sensor_index] = tmp
        # Convert to numpy array
        for i in range(len(values)):
            # print(values[i])
            values[i] = np.asarray(values[i])
            times[i] = np.asarray(times[i])

        values = np.asarray(values)
        times = np.asarray(times)

        # print(values)
        sizes = [len(i) for i in values]
        
        input_values, input_times = generate1(target_time, sizes, times, values, tide_period, skip_period,
                                              run_periods_self, run_periods_others)

        predictions = []
        if input_values is not None:
            inputs = input_values
            inputs_self = inputs[:run_periods_self]
            inputs_others = inputs[run_periods_self:]

            models = []
            to_input = []

            session = False
            ann_type = []
            if None in inputs:
                if None not in inputs_self:
                    self_model = self.get_model(sensor, sensors[sensor].type, 'self')
                    if self_model is not None:
                        models.append(self_model)
                        to_input.append(inputs_self)
                        ann_type = ['self']
                elif None not in inputs_others:
                    others_model = self.get_model(sensor, sensors[sensor].type, 'neighbours')
                    if others_model is not None:
                        models.append(others_model)
                        to_input.append(inputs_others)
                        ann_type = ['neighbours']
            else:
                all_model = self.get_model(sensor, sensors[sensor].type, 'all')
                self_model = self.get_model(sensor, sensors[sensor].type, 'self')
                others_model = self.get_model(sensor, sensors[sensor].type, 'neighbours')

                if all_model is not None:
                    to_input.append(inputs)
                    models.append(all_model)
                    ann_type.append('all')
                if self_model is not None:
                    to_input.append(inputs_self)
                    models.append(self_model)
                    ann_type.append('self')
                if others_model is not None:
                    to_input.append(inputs_others)
                    models.append(others_model)
                    ann_type.append('neighbours')

            if len(models) > 0:
                for i in range(len(models)):
                    path = models[i]['path']
                    model = models[i]['model']
                    inpt = to_input[i]
                    p = model.predict((inpt,))[0][0]
                    predictions.append((path, ann_type[i], p))

                del models
                tf.keras.backend.clear_session()

        if len(predictions) > 0:
            print(f"{len(predictions)} predictions calculated for {sensor} at {target_time}")

        return predictions

    @staticmethod
    def startup_models():
        models = {}
        models_folder = f'./ann/models/'
        folders_found = os.listdir(models_folder)

        if folders_found == 0:
            print("No ann models found, exiting...")
            exit(-1)

        sensor_names = [i.split('_')[0] for i in folders_found]
        folders_found = [models_folder + i for i in folders_found]

        for i in range(len(folders_found)):
            folder = folders_found[i]
            loss_file = f'{folders_found[i]}/loss.json'
            with open(loss_file) as file:
                current_loss = json.load(file)['loss']
            sensor_name = sensor_names[i]
            typeM = folder.split('_')[1]
            sizeM = folder.split('_')[2]
            model = keras.models.load_model(folder)

            if sensor_name not in models:
                models[sensor_name] = []

            models[sensor_name].append({'path': folder,
                                        'typeM': typeM,
                                        'sizeM': sizeM,
                                        'loss': current_loss,
                                        'model': model})

        return models
