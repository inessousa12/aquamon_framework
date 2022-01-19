import json
import os
import socket as s
import struct
import pickle
import sock_utils
import align_times
import sys
from datetime import datetime
from multiprocessing import Condition, Queue
import threading
import prediction_quality, time

from SensorHandler import SensorHandler

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

dataQueue = Queue()
# sensorQueue = Queue()

# def omissionFD(cond, sensor_handler_data, index):
#     """
#     Thread that resolves ommision failures. Adds value 0 each time an interval (period_time + jitter) passes.
#     Later in the processing thread, the value 0 will be replaced for a prediction.

#     Args:
#         cond ([Condition]): lock condition
#         sensor_handler_data ([json]) : json from configuration file
#     """
#     period_time = sensor_handler_data["period_time"]
#     jitter = 1 #seconds
#     last_time = 0

#     while True:
#         cond.acquire()
#         flag = True
#         # print(sensorQueue.qsize())
#         while sensorQueue.qsize() == 0:
#             # print("wait sensorqueue")
#             # print(sensorQueue.qsize())
#             # cond.wait(timeout=1+jitter)
#             val = cond.wait(timeout=period_time+jitter)
#             #checks if there are missing values
#             if not val:
#                 print("aqui")
#                 #fill with value 0 for later evaluation
#                 data = {'time': last_time + period_time + jitter, 'value': 0, 'type': 'temp', 'sensor': 'lnec'}
#                 dataQueue.put(data)
#                 flag = False
#             break
#         # data = sensorQueue.get()
#         # current_time = data[index]['time']
#         # if current_time == last_time + 900 + jitter or current_time == last_time + 900 or current_time == last_time + 900 - jitter: #last_time + 15min
#         #     dataQueue.put(data[index])
#         # else:
#         #     #fill with value 0 for later evaluation
#         #     data = {'time': last_time + 900 + jitter, 'value': 0, 'type': 'temp', 'sensor': 'lnec'}
#         #     dataQueue.put(data)
#         # last_time = current_time #only works for one sensor
#         if flag:
#             data = sensorQueue.get()
#             # print(data)
#             last_time = data[index]['time'] #only works for one sensor
#             dataQueue.put(data[index])
#         cond.notify()
#         cond.release()
 
def communicate(cond):
    """
    Thread that communicates with the socket and receives data.

    Args:
        cond ([Condition]): lock condition
    """

    while True:
        try:
            #store data
            #Received data from client
            size_bytes = sock_utils.receive_all(conn_sock, 4)
            size = struct.unpack('!i', size_bytes)[0]

            msg_bytes = sock_utils.receive_all(conn_sock, size)
            recvCmd = pickle.loads(msg_bytes)

            cond.acquire()

            data = json.loads(recvCmd)
            dataQueue.put(data)

            cond.notify()
            cond.release()
        except:
            time.sleep(10)
            print(sensor_handler)
            break

def processing(cond, sensor_handler):
    """
    Threads that processes received data. Sequential approach of data processing.
    For each value received:
    aligns times -> tries making predictions -> checks its quality -> output

    Args:
        cond ([Condition]): lock condition
        sensor_handler ([SensorHandler]): SensorHandler object
    """
    while True:
        cond.acquire()
        while dataQueue.qsize() == 0: 
            val = cond.wait(timeout=10)

            if not val:
                print(sensor_handler)
                break
        
        data = dataQueue.get()
        sensor_handler.append(data)

        # cond.release()

        #checks if there are enough values for a prediction and aligns times
        flag, new_times, sensor_values, sensor_times, inserted_values_indexes, sensor = align_times.check_new_times(sensor_handler)

        #prediction and quality block
        if flag:
            prediction_quality.prediction_quality_process(new_times, sensor_values, sensor_times, inserted_values_indexes, sensor, sensor_handler)
        cond.release()
        #output
        msg = ''

        count = 0
        for i in sensor_handler.sensors_data.keys():
            if count == 0:
                now = datetime.now()
                msg = f'[{now:%Y-%m-%d %H:%M:%S}]'
            sensor = sensor_handler.sensors_data[i]
            msg += f'[{i} -> M: [{len(sensor.get_values()[1])}]]   '
            count += 1

        if len(msg) > 0:
            print(msg)
            print(f'Entry Queue Size: {dataQueue.qsize()}, Prediction Queue: {sensor_handler.prediction_queue.qsize()}')

if __name__ == "__main__":
    """
    Starts server. Receives configuration file, a json file, with the necessary information to process data.
    This information is given to the SensorHandler class and it is also used to create a socket communication. 
    """
    if len(sys.argv) == 2:
        json_path = sys.argv[1]
        with open(json_path) as json_file:
            data = json.load(json_file)

        sensor_handler_data = data["sensor_handler"]
        communication_data = data["communication"]
        sensors = data["sensors"]

        HOST = communication_data["host"]
        PORT = int(communication_data["port"])

        server = sock_utils.create_tcp_server_socket(HOST, PORT, 1024)

        (conn_sock, addr) = server.accept()

        print("Connected to ", (addr, PORT), "\n")
        
        sensor_handler = SensorHandler(int(sensor_handler_data["tide_period"]), 
                                       int(sensor_handler_data["run_periods_self"]), 
                                       int(sensor_handler_data["run_periods_others"]), 
                                       int(sensor_handler_data["approach"]), 
                                       float(sensor_handler_data["cdf_threshold"]), 
                                       bool(sensor_handler_data["ignore_miss"]))

        condition = threading.Condition()
        commThread = threading.Thread(name="communicationThread", target=communicate, args=(condition,))
        processingThread = threading.Thread(name="processingThread", target=processing, args=(condition, sensor_handler,))

        # for i in range(len(sensors)):
        #     omissionThread = threading.Thread(name="omissionThread", target=omissionFD, args=(condition, sensor_handler_data, i))
        #     omissionThread.start()

        commThread.start()
        processingThread.start()