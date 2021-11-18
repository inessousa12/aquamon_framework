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
        path = sys.argv[1]
        sleep_t = eval(sys.argv[2])
        data = validate(path)
        if data is None:
            print("[ERROR] Invalid path.")
        else:
            send(data, sleep_t)
            now = datetime.now()
            msg = f'[{now:%Y-%m-%d %H:%M:%S}] Done.'
            print(msg)


def validate(path):
    """
    Checks if a file exists and returns its data

    Args:
        path ([str]): file's path

    Returns:
        [list]: data from file
    """
    data = None
    if isdir(path):
        files_names = [f for f in listdir(path) if isfile(join(path, f))]
        if len(files_names) == 0:
            return data
        for file_name in files_names:
            if not len(file_name) > 4:
                return data
            str_end = file_name.split(".")[-1]
            if not str_end == "mat" and not str_end == "npz" and not str_end == "json":
                return data

        data = build_data(path)

    return data


def build_data(path):
    """
    Gets data from file.

    Args:
        path ([str]): file's path

    Returns:
        [list]: data from file
    """
    if "/" in path and path[-1] != "/":
        path += "/"
    elif path[-1] != "\\":
        path += "\\"

    data = []
    files_names = [f for f in listdir(path) if isfile(join(path, f))]

    for file_name in files_names:
        file_path = path + file_name

        if ".mat" in file_name or ".json" in file_name:
            data_times, data_values = functions.load_raw(file_path)
        else:
            result = functions.load_processed([file_path])
            data_times, data_values = result[0], result[1]

        if "/" in path:
            data_type = path.split("/")[-2]
        else:
            data_type = path.split("\\")[-2]

        sensor = file_name.split("_")[0]

        temp_list = []
        for i in range(len(data_values)):
            temp = {
                "time": data_times[i],
                "value": data_values[i],
                "type": data_type,
                "sensor": sensor
            }

            temp_list.append(temp)

        data.append(temp_list)

    return data


def popMultiple(data):
    """
    Pops next index from list.

    Args:
        data ([list]): list with data

    Returns:
        [str]: data
    """
    next_idx = -1
    for i in range(len(data)):
        if len(data[i]) > 0:
            if next_idx == -1:
                next_idx = i
            elif data[i][0]["time"] < data[next_idx][0]["time"]:
                next_idx = i

    if next_idx == -1:
        return None

    return data[next_idx].pop(0)


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
        msg = json.dumps(item)
        # server.send_message(msg)
        serv_sock.send_message(msg)

        current = item['time']
        if last is None:
            last = current

        # time.sleep(5)
        if sleep_t == 0:
            pass
        elif sleep_t > 0:
            time.sleep(sleep_t)

    client_sock.close()


if __name__ == "__main__":
    main()
    exit()
