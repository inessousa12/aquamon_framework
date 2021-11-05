import json
import time
from datetime import datetime

import Pyro4
import sys
from os import listdir
from os.path import isfile, join, isdir

import functions

NAME = "Simulator"
server = Pyro4.Proxy(f'PYRONAME:aquamon.server')


def main():
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
    data = None
    if isdir(path):
        files_names = [f for f in listdir(path) if isfile(join(path, f))]
        if len(files_names) == 0:
            return data
        for file_name in files_names:
            if not len(file_name) > 4:
                return data
            str_end = file_name[-4:]
            if not str_end == ".mat" and not str_end == ".npz":
                return data

        data = build_data(path)

        #create new file with json
        # with open('./scripts/json_lnec_data.json', 'w') as outfile:
        #     json.dump(data, outfile)

    return data


def build_data(path):
    if "/" in path and path[-1] != "/":
        path += "/"
    elif path[-1] != "\\":
        path += "\\"

    data = []
    files_names = [f for f in listdir(path) if isfile(join(path, f))]

    for file_name in files_names:
        file_path = path + file_name

        if ".mat" in file_name:
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
    for d in data:
        if len(d) > 0:
            return False
    return True


def send(data, sleep_t):
    now = datetime.now()
    msg = f'[{now:%Y-%m-%d %H:%M:%S}] Sending data...'
    print(msg)
    server.connect_message(NAME)

    last = None
    current = None
    while not is_empty(data):
        item = popMultiple(data)
        msg = json.dumps(item)
        server.send_message(msg)

        current = item['time']
        if last is None:
            last = current

        # time.sleep(5)
        if sleep_t == 0:
            pass
        elif sleep_t > 0:
            time.sleep(sleep_t)

    server.disconnect_message(NAME)


if __name__ == "__main__":
    main()
    exit()
