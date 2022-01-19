import json
import os
import threading
import time
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
    sensor_handler = SensorHandler(750, 60, 20, cdf_threshold=0.9985, ignore_miss=True)

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
        if len(msg) > 0:
            print(msg)
            print(f'Entry Queue Size: {dataQueue.qsize()}, Prediction Queue: {sensor_handler.prediction_queue.qsize()}')


if __name__ == "__main__":
    start_server()
