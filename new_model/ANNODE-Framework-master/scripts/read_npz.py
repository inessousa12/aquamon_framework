import numpy as np
data = np.load('data\processed\\21jul_2009-18oct_2009\\temp\dsdma.npz', allow_pickle=True)
lst = data.files
print(len(lst))
# for item in lst:
#     print(item)
#     print(data[item].tolist())