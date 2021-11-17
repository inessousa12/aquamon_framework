#GLOBAL VARIABLES

from threading import Condition
from multiprocessing import Queue

cond = Condition()
dataQueue = Queue(maxsize=1000)
