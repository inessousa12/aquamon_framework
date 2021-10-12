def validate_ann_cfg(ann_cfg):
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
    needed = ["raw_path", "save_path", "metrics", "n_sensors",
              "run_periods_self", "run_periods_others", "tide_period", "skip_period"]

    if len(data_cfg) != len(needed):
        return False

    for s in needed:
        if s not in data_cfg:
            return False

    return True
