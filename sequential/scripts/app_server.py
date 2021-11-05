import json
import os
import functions
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

            sensor_data = sensor_handler.get_sensors_data()
            for sensor in sensor_data:
                pass

            #align times
            new_times = functions.build_new_times(sizes, times, sensor_handler.get_skip_period(), sensor_handler.get_tide_period())

            #prediction block

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
