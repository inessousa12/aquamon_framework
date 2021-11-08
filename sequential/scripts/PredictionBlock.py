import tensorflow as tf
from tensorflow import keras
import numpy as np
import os
import json
import functions

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

            if len(models) != 0:
                best_model = models[0]
                for model in models:
                    if model['loss'] < model['loss']:
                        best_model = model

                return best_model
        return None

    def try_prediction(self, appended_index, sensor, sensors, tide_period, run_periods_self,
                       run_periods_others, skip_period, ignore_miss, approach, values, times):

        target_time = sensors[sensor].get(appended_index)["time"]
        sizes = [len(i) for i in values]
        
        
        # print("aqui")
        input_values, input_times = functions.generate1(target_time, sizes, times, values, tide_period, skip_period,
                                              run_periods_self, run_periods_others, approach)
        # print("aqui2")
        # print(input_values)
        # time.sleep(3)

        predictions = []
        # print(input_values is not None)
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
                    # print(inpt)
                    # time.sleep(3)
                    p = model.predict((inpt,))[0][0]
                    # print(inpt)
                    # print(p)
                    # time.sleep(3)
                    predictions.append((path, ann_type[i], p, target_time))

                del models
                tf.keras.backend.clear_session()

        # if len(predictions) > 0:
        #     print(predictions)
        #     print(f"{len(predictions)} predictions calculated for {sensor} at {target_time}")
        # time.sleep(5)
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