import datetime, statistics

def prediction_quality_process(new_times, sensor_values, sensor_times, inserted_values_indexes, sensor, sensor_handler):
    """
    Tries to make a prediction and checks its quality alongside the actual measurement.
    In the prediction block, models are used to predict a value according to the approach 
    choosen by the user (entry vectors). The values predicted are then added to the SensorHandler
    object in the respective list.
    In the quality block, for each value inserted, a quadratic error is calculated with the
    actual measurement and the prediction. Then the block checks if the value received from
    the sensor is faulty or not. If it is, the value is replaced by the prediction.
    In the end, the SensorHandler objects is updated with the corrected values for the output.

    Args:
        new_times ([list]): list of aligned times
        sensor_values ([list]): list of actual measurements from the target sensor
        sensor_times ([list]): list of actual times from the target sensor
        inserted_values_indexes ([list]): list with inserted indexes in queue
        sensor ([str]): sensor's name
        sensor_handler ([SensorHandler]): SensorHandler object
    """
    #prediction block
    if len(inserted_values_indexes) >= 1:
        for index in inserted_values_indexes:
            values = sensor_handler.prediction_block.try_prediction(index, sensor, sensor_handler, sensor_values, sensor_times, new_times)
            
            if len(values) > 0:
                if index not in sensor_handler.predictions_data[sensor]:
                    sensor_handler.predictions_data[sensor][index] = []
                sensor_handler.predictions_data[sensor][index].extend(values)
                sensor_handler.quality_queue.put((sensor, index))

    #quality block
    sensor, index = sensor_handler.quality_queue.get()
    predictions = sensor_handler.predictions_data[sensor][index]
    actual = sensor_handler.sensors_data[sensor].get(index)

    quality = 1
    if actual['value'] is None:
        quality = 0
    elif not actual['prediction']:
        m = actual['value']
        p = [i[2] for i in predictions]
        errors = sensor_handler.quality_block.calculate_error(m, p)
        faulty, probabilities = sensor_handler.quality_block.fault_detection(predictions, errors)

        to_replace = False
        if not faulty:
            quality = sensor_handler.quality_block.quality_calculation(probabilities)
        else:
            quality = 0
            now = datetime.datetime.now()

            _, true_t = sensor_handler.sensors_data[sensor].get_raw_values()
            temp = sensor_handler.sensors_data[sensor].get(index)['time']
            true_index = true_t.index(temp)

            print(f'[{now:%Y-%m-%d %H:%M:%S}] [{sensor} at index: {true_index} FAULT DETECTED]')

            to_replace = True

        if to_replace:
            mean_predictions = statistics.mean(p)
            sensor_handler.sensors_data[sensor].put_prediction(mean_predictions, index)

    sensor_handler.quality_data[sensor][index] = quality