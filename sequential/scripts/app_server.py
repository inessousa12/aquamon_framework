import json
import os
import functions
import align_times
import sys
from datetime import datetime
from multiprocessing import Queue
import Pyro4

from SensorHandler import SensorHandler

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

dataQueue = Queue(maxsize=1000)

@Pyro4.expose
class Server(object):

    def connect_message(self, name):
        now = datetime.now()
        print(f'[{now:%Y-%m-%d %H:%M:%S}] {name} connected')

    def disconnect_message(self, name):
        now = datetime.now()
        print(f'[{now:%Y-%m-%d %H:%M:%S}] {name} disconnected')

    def send_message(self, message):
        dataQueue.put(message)

def start_server():
    if len(sys.argv) == 2:
        approach = sys.argv[1]
        sensor_handler = SensorHandler(750, 10, 0, approach, cdf_threshold=0.9985, ignore_miss=True)

        daemon = Pyro4.Daemon()
        ns = Pyro4.locateNS()
        uri = daemon.register(Server)
        ns.register('aquamon.server', str(uri))
        now = datetime.now()
        print(f'[{now:%Y-%m-%d  %H:%M:%S}] Server ready')
        daemon.requestLoop()

        #variables
        last_value = 0
        double = 0

        while True:
            #store data
            msg = dataQueue.get()
            data = json.loads(msg)
            sensor_handler.append(data)

            # time.sleep(1)

            #check if there are enough values for a prediction
            flag, new_times, sensor_values, sensor_times = align_times.check_new_times(sensor_handler)

            if flag:
                #prediction block
                values = sensor_handler.prediction_queue.get()
                inserted_values_indexes = values[0]
                sensor = values[1]

                if len(inserted_values_indexes) == 1:
                    for index in inserted_values_indexes:
                        values = sensor_handler.prediction_block.try_prediction(index, sensor, sensor_handler.sensors_data, sensor_handler.tide_period,
                                                                    sensor_handler.run_periods_self, sensor_handler.run_periods_others,
                                                                    sensor_handler.skip_period, sensor_handler.ignore_miss, sensor_handler.approach, sensor_values, sensor_times)
                        
                        
                        if len(values) > 0:
                            if index not in sensor_handler.predictions_data[sensor]:
                                sensor_handler.predictions_data[sensor][index] = []
                            sensor_handler.predictions_data[sensor][index].extend(values)
                            sensor_handler.quality_queue.put((sensor, index))

                #quality block

            #output
            msg = ''

            count = 0
            for i in sensor_handler.sensors_data.keys():
                if count == 0:
                    now = datetime.now()
                    msg = f'[{now:%Y-%m-%d %H:%M:%S}] '
                sensor = sensor_handler.sensors_data[i]
                msg += f'[{i} -> M: [{len(sensor.get_raw_values()[1])}]]   '
                
                count += 1

                #break the cycle
                if last_value == len(sensor.get_raw_values()[1]):
                    double += 1
                elif last_value != len(sensor.get_raw_values()[1]):
                    double = 0

                last_value = len(sensor.get_raw_values()[1])

                
            if len(msg) > 0:
                print(msg)
                print(f'Entry Queue Size: {dataQueue.qsize()}, Prediction Queue: {sensor_handler.prediction_queue.qsize()}')
            
            if double >= 10:
                    flag = False
                    print(sensor_handler)

if __name__ == "__main__":
    start_server()
