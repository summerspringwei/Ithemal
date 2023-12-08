#!/bin/bash
set -xe
# Note, this script should run in the container

# DATA_FILE="/home/ithemal/bhive/benchmark/throughput/raw_data_hsw.data"
DATA_FILE="/home/ithemal/Ithemal-models/paper/data/haswell_sample1000.data"
EXPERIMENT_NAME="train_rnn"
EXPERIMENT_TIME=0

python learning/pytorch/ithemal/run_ithemal.py --data ${DATA_FILE} \
    --use-rnn train --experiment-name ${EXPERIMENT_NAME} \
    --experiment-time ${EXPERIMENT_TIME} \
    --sgd --threads 4 --trainers 6 --weird-lr --decay-lr --epochs 100
