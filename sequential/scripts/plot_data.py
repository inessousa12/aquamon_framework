from datetime import datetime, timedelta

from matplotlib import pyplot as plt
import functions

# times, values = load_raw("data\\raw_main\\21jul_2009-18oct_2009\\temp\\dsdma_temp_21jul_18oct2009.mat")
# times, values = functions.load_raw("data\lnec\lnec_out_file.csv")
times, values = functions.load_raw("data\lnec\lnec_data_ago01_ago08_faulty.json")
# times_p, values_p = functions.load_raw("data\lnec\lnec_out_file_predictions.csv")
# times_r, values_r = functions.load_raw("data\lnec\lnec_raw_file.csv")
# times_o, values_o = functions.load_raw("data\lnec\lnec_outliers_file.csv")
# times, values = load_raw("data\processed\\21jul_2009-18oct_2009\\temp\dsdma.npz")


# times = [datetime.fromordinal(int(i)) + timedelta(days=i % 1) - timedelta(days=366) for i in times]
# print(times)
times = [datetime.fromtimestamp(i) for i in times]
# times_p = [datetime.fromtimestamp(i) for i in times_p]
# times_r = [datetime.fromtimestamp(i) for i in times_r]
# times_o = [datetime.fromtimestamp(i) for i in times_o]
# print(values)

#start = datetime.strptime("2013-10-03 00:00", "%Y-%m-%d %H:%M")
#end = datetime.strptime("2013-12-22 00:00", "%Y-%m-%d %H:%M")

sensor_name = "LNEC Temperature Sensor"
values_x = times
values_y = values
# values_x_p = times_p
# values_y_p = values_p
# values_x_r = times_r
# values_y_r = values_r
# values_x_o = times_o
# values_y_o = values_o

#xticks = [start, values_x[int(len(values_x) / 2)], end]
yticks = [0, 5, 10, 15, 20, 25, 30, 35, 40]
f = plt.figure(figsize=(12.0, 3.2))
plt.ylabel('Temperature (ºC)', fontsize=16)
plt.title(sensor_name, fontsize=20)
plt.plot(values_x, values_y, color='royalblue', label='Raw Values', linewidth=1.1)
# plt.plot(values_x_p, values_y_p, color='red', label='Predictions', linewidth=1.1)
# plt.plot(values_x_r, values_y_r, color='royalblue', label='Raw Values', linewidth=1.1)
# plt.plot(values_x_o, values_y_o, 'r.', color='black', label='Outliers', linewidth=1.1)
#plt.xticks(xticks, fontsize=14)
plt.yticks(yticks, fontsize=14)
plt.ylim(0, 40)
plt.legend(loc='best')
#plt.xlim(start, end)
plt.tight_layout()
plt.gca().spines['right'].set_visible(False)
plt.gca().spines['top'].set_visible(False)
f.savefig("values.pdf", bbox_inches='tight')
plt.show()
