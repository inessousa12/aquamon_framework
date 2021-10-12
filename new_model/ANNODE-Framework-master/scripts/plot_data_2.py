import csv
from datetime import datetime

from matplotlib import pyplot as plt

files = ["data\old\dsdma.730.A.CT_2010__nc_PD2temp.csv"]

times, values = [], []

for file in files:
    print("-> ", file)
    temp_times, temp_values = [], []
    with open(file) as csvfile:
        reader = csv.reader(csvfile, delimiter=',')

        header = next(reader)
        for row in reader:
            current_time = datetime.strptime(row[0], "%Y/%m/%d %H:%M:%S")
            current_value = eval(row[5])

            quality = eval(row[6])

            if quality < 4:
                temp_times.append(current_time)
                temp_values.append(current_value)

    zipped_lists = zip(temp_times, temp_values)
    zipped_lists = sorted(zipped_lists)
    tuples = zip(*zipped_lists)
    temp_times, temp_values = [list(tuple_) for tuple_ in tuples]

    times.extend(temp_times)
    values.extend(temp_values)

sensor_name = "Desdemona Sands Light Temperature Sensor"
values_x = times
values_y = values

xticks = [values_x[0],
          values_x[int(len(values_x) * (1/4))],
          values_x[int(len(values_x) * (2/4))],
          values_x[int(len(values_x) * (3/4))],
          values_x[-1]]
plt.figure(figsize=(12.0, 3.2))
plt.ylabel('Temperature (ºC)', fontsize=12)
plt.title(sensor_name, fontsize=12, )
plt.plot(values_x, values_y, color='royalblue', linewidth=1.1)
plt.xticks(xticks)
plt.ylim(-1, 25)
plt.xlim(values_x[0], values_x[-1])
plt.tight_layout()
plt.gca().spines['right'].set_visible(False)
plt.gca().spines['top'].set_visible(False)
plt.show()
