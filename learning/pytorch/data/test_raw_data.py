import torch

# raw_data = torch.load("/home/ithemal/Ithemal-models/paper/data/haswell_sample1000.data")
raw_data = torch.load("/home/ithemal/bhive/benchmark/throughput/raw_data_hsw.data")
print(raw_data[0])
print(raw_data[1])
print(type(raw_data[0][0]), type(raw_data[0][1]), type(raw_data[0][2]), type(raw_data[0][3]))
