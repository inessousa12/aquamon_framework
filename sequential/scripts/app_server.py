import json
import os
import queue
import time
import socket as s
import struct
import pickle
import sock_utils
import statistics
import align_times
import sys
from datetime import datetime
from multiprocessing import Queue
import Pyro4
import globals, prediction_quality

from SensorHandler import SensorHandler

os.environ['TF_CPP_MIN_LOG_LEVEL'] = '3'
os.environ["CUDA_VISIBLE_DEVICES"] = "-1"

HOST = ''
PORT = 9999

# EXPLICAÇÃO SEMAPHORE VS CONDITION: https://stackoverflow.com/questions/3513045/conditional-variable-vs-semaphore


def main_thread(data_queue, sensor_handler, conn_sock, sock):
    """
    Main thread with a sequential approach of data processing.
    For each value received:
    stores data -> aligns times -> tries making predictions -> checks its quality -> output

    Args:
        data_queue ([Queue]): queue with data
        sensor_handler ([SensorHandler]): SensorHandler class object
        conn_sock ([sock]): connection socket
        sock ([sock]): server's socket
    """
    #variables
    while_flag = True

    while while_flag:        
        #store data
        #Received data from client
        try:
            size_bytes = sock_utils.receive_all(conn_sock, 4)
            size = struct.unpack('!i', size_bytes)[0]

            msg_bytes = sock_utils.receive_all(conn_sock, size)
            recvCmd = pickle.loads(msg_bytes)
        except:
            print(sensor_handler)
            break
        

        # try:
            # msg = data_queue.get(timeout=10)
        data = json.loads(recvCmd)
        sensor_handler.append(data)
        # except queue.Empty:
        #     while_flag = False
        #     print(sensor_handler)

        # time.sleep(1)

        #check if there are enough values for a prediction and aligns times
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
            print(f'Entry Queue Size: {data_queue.qsize()}, Prediction Queue: {sensor_handler.prediction_queue.qsize()}')
    sock.close()

if __name__ == "__main__":
    """
    Starts server
    """
    if len(sys.argv) == 2:
        server = sock_utils.create_tcp_server_socket(HOST, PORT, 1024)

        (conn_sock, addr) = server.accept()

        print("Connected to ", (addr, PORT), "\n")
        approach = sys.argv[1]

        sensor_handler = SensorHandler(750, 10, 0, approach, cdf_threshold=0.9985, ignore_miss=True)
        main_thread(globals.dataQueue, sensor_handler, conn_sock, server)