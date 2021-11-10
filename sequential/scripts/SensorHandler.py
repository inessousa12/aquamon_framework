from PredictionBlock import PredictionBlock
from QualityBlock import QualityBlock
from multiprocessing import Queue
from SensorData import SensorData

import statistics
from datetime import datetime
import csv

class SensorHandler:
    def __init__(self, tide_period, run_periods_self, run_periods_others, approach, cdf_threshold=0.998, skip_period=0, ignore_miss=False):
        # Data Arch
        self.sensors_data = {}
        self.tide_period = tide_period
        self.run_periods_self = run_periods_self
        self.run_periods_others = run_periods_others
        self.skip_period = skip_period
        self.ignore_miss = ignore_miss
        self.approach = approach

        # Prediction Thread (generates predictions every time it is possible)
        self.predictions_data = {}  # {key=sensor, value={key=index, value=[(path, type, p)]}}
        self.prediction_block = PredictionBlock()
        self.prediction_queue = Queue(maxsize=1000)

        # Quality calculation & Failure Detection
        self.quality_data = {}  # {key=sensor, value={key=index, value=quality}}
        self.cdf_threshold = cdf_threshold
        self.quality_block = QualityBlock(self.cdf_threshold)
        self.quality_queue = Queue(maxsize=1000)

    def get_tide_period(self):
        return self.tide_period
    
    def get_run_periods_self(self):
        return self.run_periods_self

    def get_run_periods_others(self):
        return self.run_periods_others
    
    def get_skip_period(self):
        return self.skip_period

    def get_sensors_data(self):
        return self.sensors_data

    def get_approach(self):
        return self.approach

    def get_prediction_queue(self):
        return self.prediction_queue.get_nowait()

    def __str__(self):
        str = ""
        for sensor in self.sensors_data:
            self.sensors_data[sensor].get_values_in_csv()
            print("outfile values done")

            with open('./data/lnec/lnec_out_file_predictions.csv', 'w', encoding='UTF8', newline='') as f:
                # create the csv writer
                writer = csv.writer(f)

                values = []
                times = []
                for key in self.predictions_data[sensor]:
                    values.append(self.predictions_data[sensor][key][0][2])
                    times.append(self.predictions_data[sensor][key][0][3])

                zipped = list(zip(times, values))

                for elem in zipped:
                    writer.writerow(elem)
                print("outfile predictions done")
                print(len(values))
        return str

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
            # print(values)
            # time.sleep(3)
            sensor = values[1]

            if len(inserted_values_indexes) == 1:
                for index in inserted_values_indexes:
                    values = self.prediction_block.try_prediction(index, sensor, self.sensors_data, self.tide_period,
                                                                self.run_periods_self, self.run_periods_others,
                                                                self.skip_period, self.ignore_miss, self.approach)
                    
                    
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
            # print(actual)
            # time.sleep(3)

            quality = 1
            if actual['value'] is None:
                quality = 0
            elif not actual['prediction']:
                # print("AQUI")
                m = actual['value']
                p = [i[2] for i in predictions]
                # print("m: ", m)
                # print("p: ", p)
                # time.sleep(3)
                errors = self.quality_block.calculate_error(m, p)  #erro quadrático
                # print("errors: ", errors)
                faulty, probabilities = self.quality_block.fault_detection(predictions, errors)
                # print("faulty: ", faulty)
                # time.sleep(5)

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
                    print("ENTROU")
                    mean_predictions = statistics.mean(p)
                    self.sensors_data[sensor].put_prediction(mean_predictions, index)

            self.quality_data[sensor][index] = quality