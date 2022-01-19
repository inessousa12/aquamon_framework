import functions
import queue, time
import numpy as np

def check_new_times(sensor_handler):
    try:
        values = sensor_handler.get_prediction_queue()
    except queue.Empty:
        return False, None, None, None, None, None

    inserted_values_indexes = values[0]
    sensor = values[1]

    sensors_data = sensor_handler.sensors_data

    for index in inserted_values_indexes:
        # Check if we have at least 750min of data (1 tide period)
        sensor_names = list(sensors_data.keys())
        # min_time = sensors_data[sensor].get(0)["time"] + ((sensor_handler.tide_period+50) / float(1440))
        min_time = sensors_data[sensor].get(0)["time"] + ((sensor_handler.tide_period+50) * 60)
        target_time = sensors_data[sensor].get(index)["time"]
        diff = target_time - min_time
        if diff > 0:
            diffs = []
            
            for sn in sensor_names:
                # current_min_time = sensors_data[sn].get(0)["time"] + ((sensor_handler.tide_period+50) / float(1440))
                current_min_time = sensors_data[sn].get(0)["time"] + ((sensor_handler.tide_period+50) * 60)
                current_diff = target_time - current_min_time
                diffs.append(current_diff)
            diffs = [i for i in diffs if i > 0]
            if len(diffs) != len(sensor_names):
                return False, None, None, None, None, None
        else:
            return False, None, None, None, None, None

    times = []
    values = []

    # Order by name
    sensor_names.sort()

    main_sensor_index = sensor_names.index(sensor)

    for sensor_name in sensor_names:
        if not sensor_handler.ignore_miss:
            temp_v, temp_t = sensors_data[sensor_name].get_values() #these are the true raw values (values that the sensor sends)
            values.append(temp_v)
            times.append(temp_t)
        else:
            temp_v, temp_t = sensors_data[sensor_name].get_raw_values() #these values include replaced values and missing data 
            values.append(temp_v)
            times.append(temp_t)

    tmp = np.copy(values[0])
    values[0] = values[main_sensor_index]
    values[main_sensor_index] = tmp

    tmp = np.copy(times[0])
    times[0] = times[main_sensor_index]
    times[main_sensor_index] = tmp

    for i in range(len(times)):
        values[i] = np.asarray(values[i])
        times[i] = np.asarray(times[i])
    times = np.asarray(times)
    values = np.asarray(values)

    sizes = [len(i) for i in values]
    # print("len times: ", len(times[0]))

    #align times
    new_times = functions.build_new_times(times, sizes, sensor_handler.get_skip_period(), sensor_handler.get_tide_period())

    if len(new_times) >= 10:
        return True, new_times, values, times, inserted_values_indexes, sensor
    else:
        return False, None, None, None, None, None