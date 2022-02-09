from PredictionBlock import PredictionBlock
from QualityBlock import QualityBlock
from multiprocessing import Queue
from SensorData import SensorData

import statistics, csv
from datetime import datetime

class SensorHandler:
    def __init__(self, tide_period, run_periods_self, run_periods_others, approach, cdf_threshold=0.998, skip_period=0, ignore_miss=False):
        """
        Sensor Handler class. Handles all sensor's variables

        Args:
            tide_period ([int]): coefficient used to calculate a tide period
            run_periods_self ([int]): number of values from the target sensor
            run_periods_others ([int]): number of values from neighbor sensors
            approach ([int]): approach to be used for the creation of entry vectors
            cdf_threshold (float, optional): cdf threshold. Defaults to 0.998.
            skip_period (int, optional): minimum tax of sampling. Defaults to 0.
            ignore_miss (bool, optional): Defaults to False.
        """
        # Data Arch
        self.sensors_data = {}
        self.tide_period = tide_period
        self.run_periods_self = run_periods_self
        self.run_periods_others = run_periods_others
        self.skip_period = skip_period
        self.ignore_miss = ignore_miss
        self.approach = approach

        # Prediction Block
        self.predictions_data = {}  # {key=sensor, value={key=index, value=[(path, type, p)]}}
        self.prediction_block = PredictionBlock()
        self.prediction_queue = Queue(maxsize=1000)

        # Quality & Failure Detection Block
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

    def append(self, data, flag):
        """
        Appends data to the prediction queue.

        Args:
            data ([dict]): data to be appended.
        """
        sensor = data["sensor"]

        if sensor not in self.sensors_data:
            self.sensors_data[sensor] = SensorData(sensor)
            self.predictions_data[sensor] = {}
            self.quality_data[sensor] = {}

        appended_indexes = self.sensors_data[data["sensor"]].append(data, flag)
        

        if len(appended_indexes) > 0:
            self.prediction_queue.put((appended_indexes, sensor))