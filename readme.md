Here is SimpleXPR, A Simple and Explainable Path Reasoning Framework for
Knowledge Graph Completion.

The first step of this project is preprocess the dataset into igraph and csv format ,and generate path file for later process.
For original WN18RR and FB15k237 datasets, we use files from [KG-BERT](https://github.com/yao8839836/kg-bert).
You need to process the data file structure to:
data/
├── WN18RR/
│   ├── train.txt
│   ├── valid.txt
│   └── test.txt
└── FB15k-237/
    ├── train.txt
    ├── valid.txt
    └── test.txt

1、data preprocess

to preprocess WN18RR dataset, you can run this script in root dir: 
bash scripts/preprocess.sh WN18RR

to preprocess FB15k237 dataset, you can run this script in root dir: 
bash scripts/preprocess.sh FB15k237

2、train the model

to train the model on WN18RR dataset:
bash scripts/train_wn.sh

to train the model on FB15k237 dataset:
bash scripts/train_fb.sh

3、evaluate the model

to evaluate the model on WN18RR dataset:
bash scripts/eval_wn.sh

to evaluate the model on FB15k237 dataset:
bash scripts/eval_fb.sh

4、result visualization

to visualize the result of WN18RR dataset:
python paint_wn.py

to visualize the result of FB15k237 dataset:
python paint_fb.py


