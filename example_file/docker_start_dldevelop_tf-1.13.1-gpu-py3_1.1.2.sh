#!/bin/bash

if [ $# -lt 7 ]; then
    echo "ERROR: Wrong arguments, use: <host_name> <container_name> <gpu> <dir_mount_src> <dir_mount_dst> <port22> <port6006> <port8888>"
    exit 1
fi

HOST_NAME="$1"
CONTAINER_NAME="$2"
GPU="$3"
DIR_MOUNT_SRC="$4"
DIR_MOUNT_DST="$5"
PORT22="$6"
PORT6006="$7" # for TensorBoard
PORT8888="$8" # for Jupyter Notebook

exec docker run --rm -it \
    --runtime=nvidia \
    --name=${CONTAINER_NAME} \
    --hostname=${HOST_NAME} \
    --mount type=bind,source=${DIR_MOUNT_SRC},target=${DIR_MOUNT_DST},bind-propagation=shared \
    -e NVIDIA_DRIVER_CAPABILITIES=compute,utility,video \
    -e NVIDIA_VISIBLE_DEVICES=${GPU} \
    -e TZ=Asia/Shanghai \
    -p ${PORT22}:22 \
    -p ${PORT6006}:6006 \
    -p ${PORT8888}:8888 \
	pytorch/pytorch:latest # modify to the assigned tag-name 
