import copy
import numpy as np
import tensorflow as tf
from tensorflow import keras
import csv

class SensorData:
    """
    SensorData class. Stores raw data from a sensor.
    """

    def __init__(self, sensor):
        """
        Initializes the SensorData class.

        Args:
            sensor ([str]): Sensor's name
        """
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
        """
        Populates list according to the initial buffer.

        Returns:
            [list]: list of appended indexes
        """
        intervals = {}
        for i in range(len(self.__init_buffer) - 1):
            a_time = self.__init_buffer[i]["time"]
            b_time = self.__init_buffer[i + 1]["time"]

            interval = b_time - a_time
            # interval = round(int(interval * (60 * 1440)), -1)
            interval = round(int(interval * 60), -1)
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
            # interval = round(int(interval * (60 * 1440)), -1)
            interval = round(int(interval * 60), -1)

            if interval == best_interval:
                start_idx = i
                break

        self.__init_ok = True

        appended_indexes = []
        for i in range(start_idx, 10):
            appended_indexes.extend(self.append(self.__init_buffer[i]))

        return appended_indexes

    def append_raw(self, new_entry):
        """
        Appends raw measurement.

        Args:
            new_entry ([dict]): new raw measurement
        """
        self.__raw_data.append(new_entry)

    def append(self, new_entry):
        """Appends new entry.

        Args:
            new_entry ([dict]): new raw measurement

        Returns:
            [list]: list of appended indexes
        """
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
                # current_time_difference = round((current_measurement_time - last_measurement_time) * (60 * 1440), 2)
                current_time_difference = round((current_measurement_time - last_measurement_time) * 60, 2)

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
                            # multiplier = (self.frequency * temp_multiplier) / (60 * 1440)
                            multiplier = (self.frequency * temp_multiplier) / 60
                            temp_time = last_measurement_time + multiplier
                            # t = (temp_time - current_measurement_time) * (60 * 1440)
                            t = (temp_time - current_measurement_time) * 60

                            if 1.5 >= t >= -1.5:
                                nones_to_insert = temp_multiplier - 1
                                for i in range(nones_to_insert):
                                    # temp_time = last_measurement_time + (((i + 1) * self.frequency) / (60 * 1440))
                                    temp_time = last_measurement_time + (((i + 1) * self.frequency) / 60)
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
        """
        Gets last measurement
        """
        if len(self.__data) == 0:
            return None
        else:
            return self.__data[self.__last_pointer]

    def get(self, idx):
        """
        Gets value in a certain index
        """
        if idx <= len(self.__data) - 1:
            return self.__data[idx]
        else:
            return None

    def put_prediction(self, value, index):
        """
        Adds prediction to data dict.

        Args:
            value ([float]): prediction's value
            index ([int]): prediction's index
        """
        if index < len(self.__data):
            self.__data[index]["prediction"] = True
            self.__data[index]["true_value"] = copy.deepcopy(self.__data[index]["value"])
            self.__data[index]["value"] = value

    def get_values(self):
        """
        Gets all values and times received.
        """
        return [i["value"] for i in self.__data], [i["time"] for i in self.__data]

    def get_raw_values(self):
        """
        Gets all raw measurements and times.
        """
        return [i["value"] for i in self.__raw_data], [i["time"] for i in self.__raw_data]

    def get_raw_values_w_predictions(self):
        """
        Gets all values and times with predictions.
        """
        return [i["value"] for i in self.__data if i["value"] is not None], \
            [i["time"] for i in self.__data if i["value"] is not None]

    def get_values_without_predictions(self):
        """
        Gets all values and times without predictions.
        """
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

    def get_values_in_csv(self):
        """
        Puts values and times in a csv
        """
        with open('./data/lnec/lnec_out_file.csv', 'w', encoding='UTF8', newline='') as f:
            # create the csv writer
            writer = csv.writer(f)

            values = [i["value"] for i in self.__data]
            time = [i["time"] for i in self.__data]

            zipped = list(zip(time, values))

            for elem in zipped:
                writer.writerow(elem)