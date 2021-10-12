# ANNODE-Framework / M.Sc Thesis repository 

Server and simulator for water-sensor networks.

**Requirements:**
1. Python 3.7 (Python 3.8 will most likely not work because of the Tensorflow libraries)
2. Tensorflow 2.1.0

**Install instructions:**
1. (Recommended) Build a Python3.7 [Virtual environment](https://docs.python.org/3/library/venv.html).
2. Install required libraries using [requirements.txt](https://pip.pypa.io/en/stable/user_guide/#requirements-files) (pip install -r requirements.txt).


**Running the simulator:**
1. Run on terminal: **python -m Pyro4.naming**
2. Run the script **app-server.py** located at ./scripts/
3. Run the script **app-client_sim.py** also located at ./scripts/ giving it 1 argument: location where the data is stored.
   1. It recognizes .mat files with values and timestamps;
   2. And also .npz files (numpy) containing also values and timestamps.
