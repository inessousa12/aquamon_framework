from scipy import io
mat = io.loadmat('data\\raw_main\lnec\\temp\lnec_temp_data.mat')
mat2 = io.loadmat("data\\raw_main\\21jul_2009-18oct_2009\\temp\dsdma_temp_21jul_18oct2009.mat")
# data = mat["data"]
print(mat)
print(mat2)



# import numpy as np
# data = io.loadmat("data\\raw_other\\01jul_2009-16jul_2009\\temp\dsdma_temp_1jul_16jul_2009.mat")

# for i in data:
#     if '__' not in i and 'readme' not in i:
#             np.savetxt(("data\\raw_other\\01jul_2009-16jul_2009\\file.csv"),data[i],delimiter=',')