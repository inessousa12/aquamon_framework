import sys
from os import listdir
from os import makedirs
from os.path import isfile, join, isdir

import numpy as np

import io_data


def build(data_cfg):

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
    files_names = [f for f in listdir(raw_folder) if isfile(join(raw_folder, f))]
    sensors = [f.split("_")[0] for f in files_names]

    raw_values = []
    raw_times = []
    raw_sizes = []
    

    for file in files_names:
        data_temp_times, data_temp_values = io_data.load_raw(raw_folder + file)
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

        io_data.save_data([values, targets], save_folder + sensors[i])

        print("->", sensors[i], "DONE")


def build_new_times(sizes, times, skip_period, tide_period):
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
    final_init_time = final_init_time + (tide_period / float(1440))
    final_init_time_idx = np.searchsorted(times_target_sensor, final_init_time, side="right")

    # encontra o timestep inicial para comecar a corrida
    init_time_idx = 0
    max_time_idx = [index for index, item in enumerate(times_target_sensor) if item != 0][-1]
    for i in range(final_init_time_idx, max_time_idx):
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
        diff = float(val - last_times) * (60 * 1440)
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
                    difference = float(times[0][i] - times[j][idx_tmp - 1]) * (60 * 1440)
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


def build1_input(new_times, times, values, idx_target, tide_period, run_periods_self, run_periods_others):

    if run_periods_self > 0:
        start = run_periods_self
    else:
        start = run_periods_others

    inputs = []
    input_times = []

    if new_times[idx_target][0][2] != 0:

        time_minus_tide_period = times[0][new_times[idx_target][0][2] - 1]
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

        final_idx = new_times[idx_target][0][2] - 1

        if final_idx < 0:
            final_idx = 0

        diff_between_idxs = final_idx - first_idx
        linear_times_array = np.ceil(
            np.exp(np.linspace(np.log(1), np.log(diff_between_idxs), run_periods_self))) - 1
        last_val = 0
        increment = 0

        input_times.append([])
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
            input_times[0].append(times[0][input_idx])
            inputs.append(values[0][input_idx])

    for j in range(1, len(times)):
        if new_times[idx_target][j][2] != 0:
            input_times.append([])
            time_minus_tide_period = times[j][new_times[idx_target][j][2]]
            time_minus_tide_period = time_minus_tide_period - (tide_period / float(1440))
            tmp = times[j][:]

            first_idx = np.searchsorted(tmp, time_minus_tide_period, side="right")
            if first_idx == len(tmp):
                first_idx = -1
            else:
                first_idx -= 1

            final_idx = new_times[idx_target][j][2]

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
                input_times[j].append(times[j][input_idx])
                inputs.append(values[j][input_idx])

    return inputs, input_times


def generate1(target_time, sizes, times, values, tide_period, skip_period,run_periods_self,
              run_periods_others, new_times=None):
    if new_times is None:
        new_times = build_new_times(sizes, times, skip_period, tide_period)

    idx_target = None
    for i in range(len(new_times)):
        time = new_times[i][0][0]
        if time == target_time:
            idx_target = i

    if idx_target is None:
        return None, None
    input, input_times = build1_input(new_times, times, values, idx_target, tide_period,
                                      run_periods_self, run_periods_others)

    #input = [None if isnan(i) else i for i in input]
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
