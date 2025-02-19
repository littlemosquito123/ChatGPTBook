#! /bin/bash

# Change for multinode config

NUM_WORKERS=1
NUM_GPUS_PER_WORKER=2
MP_SIZE=1
MASTER_PORT=$(shuf -n 1 -i 10000-65535)

source $1
DATESTR=$(date +"%m-%d-%H-%M")

OPTIONS_NCCL="NCCL_DEBUG=info NCCL_IB_DISABLE=0 NCCL_NET_GDR_LEVEL=2"
HOST_FILE_PATH="/workspace/hostfile"

mkdir logs
run_cmd="${OPTIONS_NCCL} deepspeed --num_nodes ${NUM_WORKERS} --num_gpus ${NUM_GPUS_PER_WORKER} pretrain_glm.py ${gpt_options} 2>&1 | tee logs/log-${DATESTR}.txt"
echo ${run_cmd}
eval ${run_cmd}

set +x