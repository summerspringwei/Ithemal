#!/bin/bash

# Note, this script should run in the container

python learning/pytorch/ithemal/predict.py --raw-stdin \
    --model ~/Ithemal-models/bhive/hsw.dump \
    --model-data ~/Ithemal-models/bhive/hsw.mdl 