from os import listdir

import numpy as np
import json
from scipy.io import loadmat
import datetime, csv


def save_data(array, path):
    np.savez_compressed(path, array)


def load_raw(path):
    print(path)
    if ".mat" in path:
        data = loadmat(path)
    
        # if data['data']['values'].item()[:, 0] not in data:
        #     print(data['data'])
        if len(data['data']) == 1:
            return data['data']['values'].item()[:, 0], data['data']['values'].item()[:, 1]
        else:
            timestamp_list = []
            temp_list = []
            for i in range(len(data['data'])):
                timestamp_list.append(data['data'][i][0])
                temp_list.append(data['data'][i][1])
            return np.array(timestamp_list), np.array(temp_list)
        # print(len(data['data']))
        # times, values
        # return data['data']['values'].item()[:, 0], data['data']['values'].item()[:, 1]
    elif ".npz" in path:
        data = ((np.load(path, allow_pickle=True))['arr_0']).tolist()
        return data[0], data[1]
    elif ".csv" in path:
        times = []
        values = []
        with open(path, 'r') as file:
            csvreader = csv.reader(file)
            for row in csvreader:
                times.append(datetime.datetime.timestamp(datetime.datetime.strptime(row[0], '%Y/%m/%d %H:%M:%S')))
                values.append(float(row[3]))
        return times, values
    else:
        return None, None


def load_raw_all(path):
    raw_files = [path + i for i in listdir(path)]
    raw_files.sort()

    values, times = [], []

    for file in raw_files:
        temp_v, temp_t = load_raw(file)
        values.append(temp_v)
        times.append(temp_t)

    return values, times


def load_raw_mica2dot(path):
    if ".mat" in path:
        data = loadmat(path)
        data["motes_new_data"] = [sorted(i, key=lambda tup: tup[3]) for i in data["motes_new_data"]]
        data["motes_new_data"] = [[t for t in i if t[0] != 0] for i in data["motes_new_data"]]

        values = [[t[0] for t in i] for i in data["motes_new_data"]]
        times = [[t[3] for t in i] for i in data["motes_new_data"]]
        return times, values


def load_processed(path):
    data = ((np.load(path[0], allow_pickle=True))['arr_0']).tolist()
    i = 1
    while i < len(path):
        temp = ((np.load(path[i], allow_pickle=True))['arr_0']).tolist()
        data[0] = data[0] + temp[0]
        data[1] = data[1] + temp[1]
        i += 1
    return data


def load_cfg(path):
    with open(path) as file:
        cfg = json.load(file)

    return cfg


def get_model_name(ann_cfg):
    return str(ann_cfg["sensor"] + "_" + ann_cfg["metric"] + "_" + ann_cfg["inputs"] + "_" + str(ann_cfg["id"]))


def save_train_cfg(ann_cfg, file):
    data = {"epochs": ann_cfg["epochs"], "data_path": ann_cfg["data_path"]}
    with open(file, 'w') as outfile:
        json.dump(data, outfile)


def save_loss(loss, file):
    data = {"loss": loss}
    with open(file, 'w') as outfile:
        json.dump(data, outfile)
