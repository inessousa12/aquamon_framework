import io_data
from format_data import build
import sys
import os
from cfg_validator import validate_data_cfg


def main():
    if len(sys.argv) == 1:

        print("Please input data configuration file.")

    elif len(sys.argv) == 2:

        data_cfg_file = sys.argv[1]

        if os.path.isfile(data_cfg_file):
            data_cfg = io_data.load_cfg(data_cfg_file)
            if validate_data_cfg(data_cfg):
                print("Configuration loaded, training sets are now being built using:", data_cfg["raw_path"])
                build(data_cfg)
                print("OK")
            else:
                print("Invalid configuration file.")
        else:
            print("File or directory not found.")


if __name__ == "__main__":
    main()
