# Python program to convert
# JSON file to CSV
 
 
import json
import csv
import datetime
 
from matplotlib import pyplot as plt
 
# Opening JSON file and loading the data
# into the variable data
with open('.\data\lnec\lnec_temp_data_faulty.json') as json_file:
    data = json.load(json_file)

new_data = data[0]
# print(new_data)
sensor_data = new_data
# print(new_data["name"])
sensor_data = new_data["data"]
# print(len(sensor_data))
for i in range(len(sensor_data)):
    del sensor_data[i]['depth']
    # del sensor_data[i]['type']
    # del sensor_data[i]['sensor']

# now we will open a file for writing
data_file = open('./scripts/lnec_temp_data_faulty.csv', 'w', newline='')
 
# create the csv writer object
csv_writer = csv.writer(data_file)
 
# Counter variable used for writing
# headers to the CSV file
count = 0
 
for d in sensor_data:
    # print(d)
    if count == 0:
 
        # Writing headers of CSV file
        header = d.keys()
        csv_writer.writerow(header)
        count += 1
 
    #change from timestamp to date time
    timestamp = d["x"]
    d["x"] = datetime.datetime.fromtimestamp(timestamp/1000).strftime("%Y-%m-%d %H:%M")
    
    # Writing data of CSV file
    csv_writer.writerow(d.values())
 
data_file.close()


#################### CLOROFILA #####################

# files = ["data\lnec\lnec_data.csv"]

# times, values = [], []

# for file in files:
#     print("-> ", file)
#     temp_times, temp_values = [], []
#     with open(file) as csvfile:
#         reader = csv.reader(csvfile, delimiter=',')
        
#         header = next(reader)
       
#         for row in reader:
            
#             current_time = datetime.datetime.strptime(row[0], "%d-%m-%y %H:%M")
#             current_value = eval(row[1])

#             quality = 1

#             if quality < 4:
#                 temp_times.append(current_time)
#                 temp_values.append(current_value)

#     zipped_lists = zip(temp_times, temp_values)
#     zipped_lists = sorted(zipped_lists)
#     tuples = zip(*zipped_lists)
#     temp_times, temp_values = [list(tuple_) for tuple_ in tuples]

#     times.extend(temp_times)
#     values.extend(temp_values)

# sensor_name = "LNEC Clorofila Sensor"
# values_x = times
# values_y = values

# xticks = [values_x[0],
#           values_x[int(len(values_x) * (1/4))],
#           values_x[int(len(values_x) * (2/4))],
#           values_x[int(len(values_x) * (3/4))],
#           values_x[-1]]
# plt.figure(figsize=(12.0, 3.2))
# plt.ylabel('Clorofila', fontsize=12)
# plt.title(sensor_name, fontsize=12, )
# plt.plot(values_x, values_y, color='royalblue', linewidth=1.1)
# plt.xticks(xticks)
# plt.ylim(-1, 140)
# plt.xlim(values_x[0], values_x[-1])
# plt.tight_layout()
# plt.gca().spines['right'].set_visible(False)
# plt.gca().spines['top'].set_visible(False)
# plt.show()



#################### WATER TEMPERATURE ###########################


# files = ["data\lnec\lnec_temp_data.csv"]

# times, values = [], []

# for file in files:
#     print("-> ", file)
#     temp_times, temp_values = [], []
#     with open(file) as csvfile:
#         reader = csv.reader(csvfile, delimiter=',')
        
#         header = next(reader)
       
#         for row in reader:
            
#             current_time = datetime.datetime.strptime(row[0], "%d-%m-%y %H:%M")
#             current_value = eval(row[1])

#             quality = 1

#             if quality < 4:
#                 temp_times.append(current_time)
#                 temp_values.append(current_value)

#     zipped_lists = zip(temp_times, temp_values)
#     zipped_lists = sorted(zipped_lists)
#     tuples = zip(*zipped_lists)
#     temp_times, temp_values = [list(tuple_) for tuple_ in tuples]

#     times.extend(temp_times)
#     values.extend(temp_values)

# sensor_name = "LNEC Water Temperature Sensor"
# values_x = times
# values_y = values

# xticks = [values_x[0],
#           values_x[int(len(values_x) * (1/4))],
#           values_x[int(len(values_x) * (2/4))],
#           values_x[int(len(values_x) * (3/4))],
#           values_x[-1]]
# plt.figure(figsize=(12.0, 3.2))
# plt.ylabel('Temperature (ºC)', fontsize=12)
# plt.title(sensor_name, fontsize=12, )
# plt.plot(values_x, values_y, color='royalblue', linewidth=1.1)
# plt.xticks(xticks)
# plt.ylim(-1, 35)
# plt.xlim(values_x[0], values_x[-1])
# plt.tight_layout()
# plt.gca().spines['right'].set_visible(False)
# plt.gca().spines['top'].set_visible(False)
# plt.show()