import json
import os
import queue
import time
import statistics
import align_times
import sys
from datetime import datetime
from multiprocessing import Queue
import Pyro4
import threading

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
        sem = threading.Semaphore()

        mainThread = threading.Thread(target=main_thread, args=(dataQueue, sensor_handler, sem,))
        mainThread.start()

        daemon = Pyro4.Daemon()
        ns = Pyro4.locateNS()
        uri = daemon.register(Server)
        ns.register('aquamon.server', str(uri))
        now = datetime.now()
        print(f'[{now:%Y-%m-%d  %H:%M:%S}] Server ready')
        daemon.requestLoop()        

def main_thread(data_queue, sensor_handler, sem):
    #variables
    last_value = 0
    double = 0
    while_flag = True

    while while_flag:
        #store data
        sem.acquire()

        try:
            msg = data_queue.get(timeout=10)
            data = json.loads(msg)
            sensor_handler.append(data)
        except queue.Empty:
            while_flag = False
            print(sensor_handler)

        # time.sleep(1)

        #check if there are enough values for a prediction
        flag, new_times, sensor_values, sensor_times, inserted_values_indexes, sensor = align_times.check_new_times(sensor_handler)
        # print(flag)

        if flag:
            #prediction block
            if len(inserted_values_indexes) == 1:
                for index in inserted_values_indexes:
                    values = sensor_handler.prediction_block.try_prediction(index, sensor, sensor_handler, sensor_values, sensor_times, new_times)
                    
                    if len(values) > 0:
                        if index not in sensor_handler.predictions_data[sensor]:
                            sensor_handler.predictions_data[sensor][index] = []
                        sensor_handler.predictions_data[sensor][index].extend(values)
                        sensor_handler.quality_queue.put((sensor, index))

            #quality block
            sensor, index = sensor_handler.quality_queue.get()
            predictions = sensor_handler.predictions_data[sensor][index]
            actual = sensor_handler.sensors_data[sensor].get(index)

            quality = 1
            if actual['value'] is None:
                quality = 0
            elif not actual['prediction']:
                m = actual['value']
                p = [i[2] for i in predictions]
                errors = sensor_handler.quality_block.calculate_error(m, p)  #erro quadrático
                faulty, probabilities = sensor_handler.quality_block.fault_detection(predictions, errors)

                to_replace = False
                if not faulty:
                    quality = sensor_handler.quality_block.quality_calculation(probabilities)
                else:
                    quality = 0
                    now = datetime.now()

                    _, true_t = sensor_handler.sensors_data[sensor].get_raw_values()
                    temp = sensor_handler.sensors_data[sensor].get(index)['time']
                    true_index = true_t.index(temp)

                    print(f'[{now:%Y-%m-%d %H:%M:%S}] [{sensor} at index: {true_index} FAULT DETECTED]')

                    to_replace = True

                if to_replace:
                    mean_predictions = statistics.mean(p)
                    sensor_handler.sensors_data[sensor].put_prediction(mean_predictions, index)

            sensor_handler.quality_data[sensor][index] = quality

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
            print(f'Entry Queue Size: {data_queue.qsize()}, Prediction Queue: {sensor_handler.prediction_queue.qsize()}')

        sem.release()

        

if __name__ == "__main__":
    start_server()
