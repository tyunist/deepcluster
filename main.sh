# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.
#
# This source code is licensed under the license found in the
# LICENSE file in the root directory of this source tree.
#
#!/bin/bash

#DIR="/datasets01/imagenet_full_size/061417/train"
HOME="~/github_workspaces/github_fb_deepcluster/deepcluster"
DIR="/media/tynguyen/docker_folder/imagenet/tiny-imagenet-200/train"
ARCH="vgg16"
LR=0.05
WD=-5
K=200
WORKERS=12
EXP="${HOME}/test/exp"
#PYTHON="/usr/bin/python3.7"
PYTHON="/home/tynguyen/miniconda3/envs/py3/bin/python"
PYTHON=python3
IMG_SIZE=224
BATCH_SIZE=16

mkdir -p ${EXP}

CUDA_VISIBLE_DEVICES=0 ${PYTHON} main.py \
                        ${DIR} \
                        --exp ${EXP}\
                        --img_size ${IMG_SIZE}\
                        --arch ${ARCH} \
                        --lr ${LR} \
                        --wd ${WD} \
                        --k ${K} \
                        --sobel \
                        --verbose \
                        --workers ${WORKERS} \
                        --batch ${BATCH_SIZE} \
                        --verbose
