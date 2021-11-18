import sys
from os import listdir
from os import makedirs
from os.path import isfile, join, isdir

import json
from scipy.io import loadmat

import numpy as np
import datetime

import entry_vectors

def validate_ann_cfg(ann_cfg):
    """
    Validates ann configuration file.
    """
    needed = ["data_train", "data_test", "epochs", "hidden_layer_1", "hidden_layer_2", "output_layer",
              "loss_function", "checkpoint_epochs", "checkpoint_path", "model_save_path", "metric",
              "sensor", "input_shape", "input_target", "input_others","inputs", "data_path", "cdf_data_path",
              "id", "runs"]

    if len(ann_cfg) != len(needed):
        return False

    for s in needed:
        if s not in ann_cfg:
            return False

    return True


def validate_data_cfg(data_cfg):
    """
    Validates data configuration file.
    """
    needed = ["raw_path", "save_path", "metrics", "n_sensors",
              "run_periods_self", "run_periods_others", "tide_period", "skip_period"]

    if len(data_cfg) != len(needed):
        return False

    for s in needed:
        if s not in data_cfg:
            return False

    return True

def build(data_cfg):
    """
    Starts building cdf file.

    Args:
        data_cfg ([dict]): data configuration file
    """
    save_path = data_cfg["save_path"]
    raw_path = data_cfg["raw_path"]

    raw_datasets_folders = listdir(raw_path)
    raw_folders = [raw_path + i for i in raw_datasets_folders]

    if len(raw_datasets_folders) <= 0:
        print("No Folders Found in the Raw Data Folder")
        print("Please organize the data in folders for each time period with each metric inside")
        print("Like: ddmm_YYYY-ddmm_YYYY/metric1 | ddmm_YYYY-ddmm_YYYY/metric2")
        sys.exit(1)
    else:
        save_folders = [save_path + i for i in raw_datasets_folders]
        for i in save_folders:
            for m in data_cfg["metrics"]:
                makedirs(str(i + "/" + m + "/"), exist_ok=True)

    for raw_folder in raw_folders:
        for metric in data_cfg["metrics"]:

            current_raw_folder = raw_folder + "/" + metric + "/"

            if not isdir(current_raw_folder):
                print("No Folder for \"" + metric + "\" found. Continuing...")
                continue

            current_save_folder = raw_folder + "/" + metric + "/"
            current_save_folder = current_save_folder.replace(data_cfg["raw_path"], data_cfg["save_path"], 1)

            print("|", current_raw_folder, "|")

            build_multiple(current_raw_folder, current_save_folder, data_cfg["run_periods_self"],
                           data_cfg["run_periods_others"], data_cfg["tide_period"], data_cfg["skip_period"])


def build_multiple(raw_folder, save_folder, run_periods_self, run_periods_others, tide_period, skip_period):
    """
    Builds cdf file according to the data configuration file.

    Args:
        raw_folder ([str]): path of raw folder
        save_folder ([str]): path to save
        run_periods_self ([int]): number of values sent from the target sensor
        run_periods_others ([int]): number of values sent from neighbor sensors
        tide_period ([int]): coefficient used to calculate a tide period
        skip_period ([int]): minimum tax of sampling
    """
    files_names = [f for f in listdir(raw_folder) if isfile(join(raw_folder, f))]
    sensors = [f.split("_")[0] for f in files_names]

    raw_values = []
    raw_times = []
    raw_sizes = []
    

    for file in files_names:
        data_temp_times, data_temp_values = load_raw(raw_folder + file)
        raw_times.append(data_temp_times)
        raw_values.append(data_temp_values)
        raw_sizes.append(len(data_temp_times))

    np_raw_values = np.array(raw_values)
    np_raw_times = np.array(raw_times)
    max_size = max(raw_sizes)

    np_raw_values_copy = np.copy(np_raw_values)
    np_raw_times_copy = np.copy(np_raw_times)
    raw_sizes_copy = np.copy(raw_sizes)

    for i in range(len(sensors)):
        if isfile(save_folder + sensors[i] + ".npz"):
            print("->", sensors[i], "FOUND")
            continue

        if i > 0:
            np_raw_values_copy = np.copy(np_raw_values)
            np_raw_times_copy = np.copy(np_raw_times)
            raw_sizes_copy = np.copy(raw_sizes)

            # Switch first sensor to the sensor we want to target
            tmp = np.copy(np_raw_values_copy[0])
            np_raw_values_copy[0] = np_raw_values_copy[i]
            np_raw_values_copy[i] = tmp

            tmp = np.copy(np_raw_times_copy[0])
            np_raw_times_copy[0] = np_raw_times_copy[i]
            np_raw_times_copy[i] = tmp

            tmp = np.copy(raw_sizes_copy[0])
            raw_sizes_copy[0] = raw_sizes_copy[i]
            raw_sizes_copy[i] = tmp

        values, values_times, targets, targets_times = build_inputs(raw_sizes_copy, np_raw_times_copy, np_raw_values_copy,
                                                                    run_periods_self, run_periods_others, tide_period, skip_period)

        save_data([values, targets], save_folder + sensors[i])

        print("->", sensors[i], "DONE")


def build_new_times(times, sizes, skip_period, tide_period):
    """
    Aligns times in order for them to coincide with other sensor's times.

    Args:
        times ([list]): list of raw times
        sizes ([list]): list with len of values' size
        skip_period ([int]): minimum tax of sampling
        tide_period ([int]): coefficient used to calculate a tide period

    Returns:
        [list]: list of aligned times
    """
    # finds the first real init_time
    # [row[0] for row in times] -> column 0 (4 primeiros idx)
    times_first = [row[0] for row in times]
    times_first_min_common_idx = times_first.index(max(times_first))

    # obtemos o valor tempo mais perto do valor inicial pois não existe timestamps exatamente iguais
    times_target_sensor = times[0][:]
    val_min_common = times[times_first_min_common_idx][0]
    real_init_time_idx = np.searchsorted(times_target_sensor, val_min_common, side="right")

    # final_init_time = tempo inicial + periodo de mare
    final_init_time = times[0][real_init_time_idx]
    # com minutos
    # final_init_time = final_init_time + (tide_period / float(1440))
    final_init_time = final_init_time + (tide_period * 60)
    final_init_time_idx = np.searchsorted(times_target_sensor, final_init_time, side="right")

    # encontra o timestep inicial para comecar a corrida
    init_time_idx = 0
    max_time_idx = [index for index, item in enumerate(times_target_sensor) if item != 0][-1]
    for i in range(final_init_time_idx, max_time_idx):  #lnec example 10 values
        val = times[0][i]
        counter_differences = 0
        for j in range(1, len(times)):
            tmp = times[j][:]

            idx_tmp = np.searchsorted(tmp, val, side="right")
            if idx_tmp == len(tmp):
                idx_tmp = -1

            if idx_tmp > -1:
                counter_differences = counter_differences + 1

        if counter_differences == len(times) - 1:
            init_time_idx = i
            break

    new_times = []
    neighbour_data_missing = False

    last_times = -1
    count_diff = 0
    for i in range(init_time_idx, max_time_idx):

        val = times[0][i]

        # Use skip_period to skip unwanted values Example: (3min-3min) -> (12min-12min)
        # diff = float(val - last_times) * (60 * 1440)
        diff = float(val - last_times) * 60
        if skip_period > 0 and last_times != -1 and diff < (skip_period * 60):
            count_diff += 1
            continue
        else:
            new_times.append([])
            last_times = val

        t = i - init_time_idx - count_diff
        new_times[t].append([])
        if len(times) == 1:
            # APENAS 1 SENSOR
            new_times[t][0].append(val)
            new_times[t][0].append(0)
            new_times[t][0].append(i)
        else:
            # VARIOS SENSORES
            new_times[t][0].append(val)
            new_times[t][0].append(0)
            new_times[t][0].append(i)

            for j in range(1, len(times)):
                new_times[t].append([])
                tmp = times[j][0:sizes[j]]

                idx_tmp = np.searchsorted(tmp, val, side="right")
                if idx_tmp == len(tmp):
                    idx_tmp = -1

                if idx_tmp > -1:
                    # calculates the diff in seconds between neighbour timestamp and target
                    # difference = float(times[0][i] - times[j][idx_tmp - 1]) * (60 * 1440)
                    difference = float(times[0][i] - times[j][idx_tmp - 1]) * 60 / 1000
                    new_times[t][j].append(times[j][idx_tmp - 1])
                    new_times[t][j].append(difference)
                    new_times[t][j].append(idx_tmp - 1)
                else:
                    neighbour_data_missing = True
                    break

        if neighbour_data_missing:
            new_times.remove(new_times[t])
            break

    return new_times

def generate1(target_time, times, values, sensor_handler, new_times):
    """
    Generates entry vectors.

    Args:
        target_time ([int]): current target time
        times ([list]): list of raw times
        values ([list]): list of raw values
        sensor_handler ([SensorHandler]): SensorHandler class
        new_times ([list]): list of new aligned times

    Returns:
        [list]: entry vector of measurement values
        [list]: entry vector of time values
    """
    idx_target = None
    for i in range(len(new_times)):
        times_g = new_times[i][0][0]
        if times_g == target_time:
            idx_target = i

    if idx_target is None:
        return None, None

    input, input_times = entry_vectors.build1_input(new_times, times, values, idx_target, sensor_handler)

    return input, input_times


def build_inputs(sizes=None, times=None, values=None, run_periods_self=None, run_periods_others=None,
                 tide_period=None, skip_period=None):
    """
        times[] & values[]
        : index 0       -> Target data
        : next index's  -> Neighbour data
    """
    new_times = build_new_times(sizes, times, skip_period, tide_period)

    if run_periods_self > 0:
        start = run_periods_self
    else:
        start = run_periods_others

    c_times = 0
    targets = []
    targets_times = []
    times_idx_targets = []
    input_times = []
    inputs = []

    for i in range(start, len(new_times)):

        input_times.append([])
        inputs.append([])
        targets.append(values[0][new_times[i][0][2]])
        targets_times.append(times[0][new_times[i][0][2]])
        times_idx_targets.append(i)
        c_times = c_times + 1
        counter = 1

        if new_times[i][0][2] != 0:
            time_minus_tide_period = times[0][new_times[i][0][2] - 1]
            time_minus_tide_period = time_minus_tide_period - (tide_period / float(1440))
            tmp = times[0][:]

            first_idx = np.searchsorted(tmp, time_minus_tide_period, side="right")
            if first_idx == len(tmp):
                first_idx = -1
            else:
                first_idx -= 1

            # confirmar
            if first_idx < 0:
                first_idx = 0

            final_idx = new_times[i][0][2] - 1

            if final_idx < 0:
                final_idx = 0

            diff_between_idxs = abs(final_idx - first_idx)
            linear_times_array = np.ceil(
                np.exp(np.linspace(np.log(1), np.log(diff_between_idxs), run_periods_self))) - 1
            last_val = 0
            increment = 0
            input_times[i - start].append([])
            for k in range(0, run_periods_self):
                if run_periods_self == 1:
                    input_idx = final_idx
                else:
                    input_idx = int(final_idx - linear_times_array[k] - increment)

                    # para nao ter valores repetidos
                    if input_idx == last_val:
                        increment = increment + 1
                        input_idx = input_idx - 1

                last_val = input_idx
                input_times[i - start][0].append(times[0][input_idx])
                inputs[i - start].append(values[0][input_idx])

                counter = counter + 1

        for j in range(1, len(times)):
            if new_times[i][j][2] != 0:
                input_times[i - start].append([])
                time_minus_tide_period = times[j][new_times[i][j][2]]
                time_minus_tide_period = time_minus_tide_period - (tide_period / float(1440))
                tmp = times[j][:]

                first_idx = np.searchsorted(tmp, time_minus_tide_period, side="right")
                if first_idx == len(tmp):
                    first_idx = -1
                else:
                    first_idx -= 1

                final_idx = new_times[i][j][2]

                diff_between_idxs = final_idx - first_idx

                linear_times_array = np.ceil(
                    np.exp(np.linspace(np.log(1), np.log(diff_between_idxs), run_periods_others))) - 1

                last_val = 0
                increment = 0

                for k in range(0, run_periods_others):
                    if run_periods_others == 1:
                        input_idx = final_idx
                    else:
                        input_idx = int(final_idx - linear_times_array[k] - increment)

                        # para nao ter valores repetidos
                        if input_idx == last_val:
                            increment = increment + 1
                            input_idx = input_idx - 1

                    last_val = input_idx
                    input_times[i - start][j].append(times[j][input_idx])
                    inputs[i - start].append(values[j][input_idx])

                    counter = counter + 1
    return inputs, input_times, targets, targets_times

"""
Next functions are for file processing, mainly input files.
"""

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
    elif ".json" in path:
        with open(path) as json_file:
            data = json.load(json_file)

        new_data = data[0]

        #removes first part of the json file, sensor's name part
        sensor_data = new_data
        sensor_data = new_data["data"]

        #removes redundant depth parameter
        for i in range(len(sensor_data)):
            del sensor_data[i]['depth']

        timestamps = []
        values = []
        count = 0
        for d in sensor_data:
            if count != 0:
                d["x"] = d["x"]/1000
                date = datetime.datetime.utcfromtimestamp(d["x"]).strftime('%Y-%m-%d %H:%M') 
                date = datetime.datetime.strptime(date, "%Y-%m-%d %H:%M")
                date = datetime.datetime.timestamp(date)
                timestamps.append(date)
                values.append(d["y"])
            count += 1

        return timestamps, values

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
