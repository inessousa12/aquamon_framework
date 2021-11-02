import json
import os
import threading
import time
import sys
from datetime import datetime
from multiprocessing import Queue
import Pyro4
from sensor_data import SensorHandler

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
        #cdf_threshold=0.9985
        sensor_handler = SensorHandler(750, 10, 0, approach, cdf_threshold=0.9985, ignore_miss=True)

        readerThread = threading.Thread(target=queue_reader_thread, args=(dataQueue, sensor_handler,))
        readerThread.start()

        logThread = threading.Thread(target=log_thread, args=(sensor_handler,))
        logThread.start()

        daemon = Pyro4.Daemon()
        ns = Pyro4.locateNS()
        uri = daemon.register(Server)
        ns.register('aquamon.server', str(uri))
        now = datetime.now()
        print(f'[{now:%Y-%m-%d  %H:%M:%S}] Server ready')
        daemon.requestLoop()


def queue_reader_thread(queue, sensorHandler):
    while True:
        msg = queue.get()
        data = json.loads(msg)
        sensorHandler.append(data)


def log_thread(sensor_handler):
    flag = True
    last_value = 0
    double = 0
    while True:
        time.sleep(1)
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

            # print("LAST VALUE: ", last_value)
            # print("DOUBLE: ", double)
            # print("CURRENT: ", len(sensor.get_raw_values()[1]))

            last_value = len(sensor.get_raw_values()[1])

            
        if len(msg) > 0:
            print(msg)
            print(f'Entry Queue Size: {dataQueue.qsize()}, Prediction Queue: {sensor_handler.prediction_queue.qsize()}')
        
        if double >= 10:
                flag = False
                print(sensor_handler)


if __name__ == "__main__":
    start_server()
