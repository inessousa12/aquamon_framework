import numpy as np
import time

def checkIfDuplicates(listOfElems):
    ''' Check if given list contains any duplicates '''
    if len(listOfElems) == len(set(listOfElems)):
        return False
    else:
        return True

def build1_input(new_times, times, values, idx_target, tide_period, run_periods_self, run_periods_others, approach):

    if run_periods_self <= 0:
        run_periods_self = run_periods_others
    # print(run_periods_self)
    
    inputs = []
    input_times = []
    # print("ID TARGET: ", idx_target)
    # print("NEW TIMES: ", new_times)
    if new_times[idx_target][0][2] != 0:
        # print("aqui")

        time_minus_tide_period = times[0][new_times[idx_target][0][2] - 1]
        # time_minus_tide_period = time_minus_tide_period - (tide_period / float(1440))  #for .mat files from previous datasets
        time_minus_tide_period = time_minus_tide_period - (tide_period * 60)
        tmp = times[0][:]

        # print( np.searchsorted(tmp, time_minus_tide_period, side="right"))
        # print("time minus: ", time_minus_tide_period)


        first_idx = np.searchsorted(tmp, time_minus_tide_period, side="right")
        if first_idx == len(tmp):
            first_idx = -1
        # elif first_idx == 0:
        #     first_idx = len(tmp) - 1
        else:
            first_idx -= 1

        # confirmar
        if first_idx < 0:
            first_idx = 0


        final_idx = new_times[idx_target][0][2] - 1

        if final_idx < 0:
            final_idx = 0

        diff_between_idxs = abs(final_idx - first_idx)
        # print("first index: ", first_idx)
        # print("final index: ", final_idx)

    
        if int(approach) == 1:
            # print("entrou")
            #exponential
            times_array = np.ceil(
                np.exp(np.linspace(np.log(1), np.log(diff_between_idxs), run_periods_self))) - 1
            # print(times_array)
            # time.sleep(3)
        elif int(approach) == 2:
            #linear
            times_array = np.ceil(
                np.linspace(np.log(1), np.log(diff_between_idxs), run_periods_self))
        elif int(approach) == 3:
            #last ten
            times_array = np.ceil(
                np.linspace(np.log(1), 9, run_periods_self))

        # print("TIMES ARRAY: ", times_array)
        last_val = 0
        increment = 0

        input_times.append([])
        indexes = []
        count = 0
        
        for k in range(0, run_periods_self):
            if run_periods_self == 1:
                input_idx = final_idx
            else:
                input_idx = int(final_idx - times_array[k] - increment)
                
                
                # para nao ter valores repetidos
                if input_idx == last_val and count < 10:
                    increment = increment + 1
                    input_idx = input_idx - 1
            
            
            # print("LEN TIMES: ", len(times[0]))
            # print("INPUT_IDX: ", input_idx)
            # print("TIMES_ARRAY[K]: ", times_array[k])
            # print("INCREMENT: ", increment)
            # print("len input_times: ", len(input_times[0]))

            if input_idx < 0:
                input_idx = 0
            
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