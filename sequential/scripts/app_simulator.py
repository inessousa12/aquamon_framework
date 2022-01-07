import json
import time
from datetime import datetime

import sys
from os import listdir
from os.path import isfile, join, isdir
from Server import Server

import functions

HOST = '127.0.0.1'
PORT = 9999


def main():
    """
    Starts client and sends messages to server.
    """
    if len(sys.argv) != 3:
        print("[ERROR] Only input two arguments: the path to the data you want to simulate, " + \
              "and the time in milliseconds (-1 = instant, 0 = real time).")
    else:
        json_path = sys.argv[1]
        with open(json_path) as json_file:
            data = json.load(json_file)

        data = build_data(data)

        sleep_t = eval(sys.argv[2])

        if data is None:
            print("[ERROR] Invalid path.")
        else:
            send(data, sleep_t)
            now = datetime.now()
            msg = f'[{now:%Y-%m-%d %H:%M:%S}] Done.'
            print(msg)


def build_data(data):
    """
    Gets data from file.

    Args:
        data ([json]): configuration file with all sensor's data

    Returns:
        [list]: data from each sensor
    """
    sensors = data["sensors"]
    data_list = []

    for sensor in sensors:
        data_times, data_values = functions.load_raw(sensor["path"])

        temp_list = []
        for i in range(len(data_values)):
            temp = {
                "time": data_times[i],
                "value": data_values[i],
                "type": sensor["data_type"],
                "sensor": sensor["sensor_id"]
            }

            temp_list.append(temp)
        data_list.append(temp_list)

    return data_list

def popMultiple(data):
    """
    Pops next index from list.

    Args:
        data ([list]): list with data

    Returns:
        [str]: data
    """
    return_list = []
    for i in range(len(data)):
        return_list.append(data[i].pop(0))

    return return_list


def is_empty(data):
    """
    Checks if list is empty

    Args:
        data ([list]): list with data

    Returns:
        [bool]: True if list is empty, False otherwise
    """
    for d in data:
        if len(d) > 0:
            return False
    return True


def send(data, sleep_t):
    """
    Sends data to server with intervals.

    Args:
        data ([list]): list of data to send
        sleep_t ([float]): interval's time
    """
    now = datetime.now()
    msg = f'[{now:%Y-%m-%d %H:%M:%S}] Sending data...'
    print(msg)

    serv_sock = Server(HOST,PORT)
    client_sock = serv_sock.connect_message()
    last = None
    current = None
    while not is_empty(data):
        item = popMultiple(data)
        # print("item: ", item)
        msg = json.dumps(item)

        serv_sock.send_message(msg)

        current = item[0]['time']
        if last is None:
            last = current

        if sleep_t == 0:
            pass
        elif sleep_t > 0:
            time.sleep(sleep_t)

    client_sock.close()


if __name__ == "__main__":
    main()
    exit()
