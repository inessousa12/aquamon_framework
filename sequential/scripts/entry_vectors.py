import numpy as np
import time

def checkIfDuplicates(listOfElems):
    ''' Check if given list contains any duplicates '''
    if len(listOfElems) == len(set(listOfElems)):
        return False
    else:
        return True

def build1_input(new_times, times, values, idx_target, sensor_handler):
    """
    Builds one entry vector

    Args:
        new_times ([list]): list of aligned times
        times ([list]): list of raw times
        values ([list]): list of raw measurement values
        idx_target ([int]): current index target
        sensor_handler ([SensorHandler]): SensorHandler class

    Returns:
        [list]: entry vector of measurement values
        [list]: entry vector of time values
    """
    run_periods_self = sensor_handler.get_run_periods_self()
    run_periods_others = sensor_handler.get_run_periods_others()
    tide_period = sensor_handler.get_tide_period()
    approach = sensor_handler.get_approach()

    if run_periods_self <= 0:
        run_periods_self = run_periods_others
    
    inputs = []
    input_times = []
    if new_times[idx_target][0][2] != 0:
        time_minus_tide_period = times[0][new_times[idx_target][0][2] - 1]
        # time_minus_tide_period = time_minus_tide_period - (tide_period * (60 * 1440))
        time_minus_tide_period = time_minus_tide_period - (tide_period * 60)
        tmp = times[0][:]

        first_idx = np.searchsorted(tmp, time_minus_tide_period, side="right")
        if first_idx == len(tmp):
            first_idx = -1
        else:
            first_idx -= 1

        # confirmar
        if first_idx < 0:
            first_idx = 0

        final_idx = new_times[idx_target][0][2] - 1 #ignores current value received

        if final_idx < 0:
            final_idx = 0

        diff_between_idxs = abs(final_idx - first_idx)

        if int(approach) == 1:
            #exponential
            times_array = np.ceil(
                np.exp(np.linspace(np.log(1), np.log(diff_between_idxs), run_periods_self))) - 1
        elif int(approach) == 2:
            #linear
            times_array = np.ceil(
                np.linspace(np.log(1), np.log(diff_between_idxs), run_periods_self))
        elif int(approach) == 3:
            #last ten
            times_array = np.ceil(
                np.linspace(np.log(1), 9, run_periods_self))

        last_val = 0
        increment = 0

        input_times.append([])
        indexes = []
        count = 0

        # print("idx target: ", final_idx+1)
        # print("times_array: ", times_array)
        
        for k in range(0, run_periods_self):
            if run_periods_self == 1:
                input_idx = final_idx
            else:
                input_idx = int(final_idx - times_array[k] - increment)
                
                
                # para nao ter valores repetidos
                if input_idx == last_val and count < 10:
                    increment = increment + 1
                    input_idx = input_idx - 1

            if input_idx < 0:
                input_idx = 0

            
            # print("input idx: ", input_idx)
            # print("value: ", values[0][input_idx])
            
            count += 1
            last_val = input_idx
            indexes.append(input_idx)
            input_times[0].append(times[0][input_idx])
            inputs.append(values[0][input_idx])
        # print("INDEXES: ", indexes)
        # time.sleep(3)
    

    #more than one sensor
    for j in range(1, len(times)):
        if new_times[idx_target][j][2] != 0:
            input_times.append([])
            time_minus_tide_period = times[j][new_times[idx_target][j][2]]
            # time_minus_tide_period = time_minus_tide_period - (tide_period * (60 * 1440))
            time_minus_tide_period = time_minus_tide_period - (tide_period * 60)
            tmp = times[j][:]

            first_idx = np.searchsorted(tmp, time_minus_tide_period, side="right")
            if first_idx == len(tmp):
                first_idx = -1
            else:
                first_idx -= 1

            final_idx = new_times[idx_target][j][2]

            diff_between_idxs = final_idx - first_idx
            

            if int(approach) == 1:
                #exponential
                times_array = np.ceil(
                    np.exp(np.linspace(np.log(1), np.log(diff_between_idxs), run_periods_self))) - 1
            elif int(approach) == 2:
                #linear
                times_array = np.ceil(
                    np.linspace(np.log(1), np.log(diff_between_idxs), run_periods_self))
            elif int(approach) == 3:
                #last ten
                times_array = np.ceil(
                    np.linspace(np.log(1), 9, run_periods_self))

            last_val = 0
            increment = 0

            for k in range(0, run_periods_others):
                if run_periods_others == 1:
                    input_idx = final_idx
                else:
                    input_idx = int(final_idx - times_array[k] - increment)

                    # para nao ter valores repetidos
                    if input_idx == last_val:
                        increment = increment + 1
                        input_idx = input_idx - 1

                last_val = input_idx
                input_times[j].append(times[j][input_idx])
                inputs.append(values[j][input_idx])

    return inputs, input_times