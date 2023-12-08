#!/bin/bash

# Note, this script should run in the container
# There are some example binary bb instructions in bhive/benchmark/throughput/hsw.csv
# We can use the bhive/benchmark/disasm to disassemble the binary bb instructions


python learning/pytorch/ithemal/predict.py --raw-stdin \
    --model ~/Ithemal-models/bhive/hsw.dump \
    --model-data ~/Ithemal-models/bhive/hsw.mdl 
