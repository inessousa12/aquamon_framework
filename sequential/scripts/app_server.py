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
import prediction_quality

from SensorHandler import SensorHandler

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

dataQueue = Queue()

# EXPLICAÇÃO SEMAPHORE VS CONDITION: https://stackoverflow.com/questions/3513045/conditional-variable-vs-semaphore

def communicate(cond):
    """
    Thread that communicates with the socket and receives data.

    Args:
        cond ([Condition]): lock condition
    """
    while_flag = True

    while while_flag:        
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

        cond.release()

        #checks if there are enough values for a prediction and aligns times
        flag, new_times, sensor_values, sensor_times, inserted_values_indexes, sensor = align_times.check_new_times(sensor_handler)

        #prediction and quality block
        if flag:
            prediction_quality.prediction_quality_process(new_times, sensor_values, sensor_times, inserted_values_indexes, sensor, sensor_handler)

        #output
        msg = ''

        count = 0
        for i in sensor_handler.sensors_data.keys():
            if count == 0:
                now = datetime.now()
                msg = f'[{now:%Y-%m-%d %H:%M:%S}]'
            sensor = sensor_handler.sensors_data[i]
            msg += f'[{i} -> M: [{len(sensor.get_raw_values()[1])}]]   '
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
        processingThread = threading.Thread(name="processingThread", target=processing, args=(condition, sensor_handler))

        commThread.start()
        processingThread.start()