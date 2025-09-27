#!/usr/bin/env bash

set -x
set -e

TASK="FB15k237"
DATA_DIR="data/${TASK}/"
CHECKPOINT_DIR="checkpoint/${TASK}_final"
LOG_DIR=${CHECKPOINT_DIR}

python3 -u trainer.py \
--task ${TASK} \
--data-dir "${DATA_DIR}" \
--model-path /mnt/data/model/bert-base-uncased \
--save-dir "${CHECKPOINT_DIR}" \
--log-dir "${LOG_DIR}" \
--pooling mean \
--lr 1e-5 \
--batch-size 1200 \
--print-freq 50 \
--use-amp \
--epochs 10 \
--seed 42 \
--add-task-type \
--token-type-use \
--use-new-path \
--max-hop-path 2 \
--train-tail \
--tail-token \
--max-to-keep 1 "$@"
