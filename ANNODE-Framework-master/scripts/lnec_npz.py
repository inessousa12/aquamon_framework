import numpy

my_data = numpy.genfromtxt("data\lnec\lnec_temp_data.csv", delimiter=',')
numpy.save('data\\raw_main\lnec\\lnec_temp_data.npy', my_data)