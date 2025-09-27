#!/usr/bin/env bash

set -x
set -e

checkpoint_path="./checkpoint/FB15k237_final/model_best.mdl"
TASK="FB15k237"
if [[ $# -ge 1 && ! "$1" == "--"* ]]; then
    checkpoint_path=$1
    shift
fi
if [[ $# -ge 1 && ! "$1" == "--"* ]]; then
    TASK=$1
    shift
fi


python3 -u evaluate.py \
--task "${TASK}" \
--data-dir "./data/${TASK}/" \
--eval-model-path "${checkpoint_path}" \
--batch-size 8192 \
--k-path 10 \
--eval-mode 2 \
--token-type-use \
--add-task-type \
--max-hop-path 2 \
--tail-token \
--model-path /mnt/data/model/bert-base-uncased "$@"

