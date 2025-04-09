#!/bin/bash

set -e

docker build -t ryancicak759/gpu-base:cuda12.1.1 base/
docker build -t ryancicak759/gpu-venv:cuda12.1.1 venv/
docker build -t ryancicak759/gpu-tensorflow:cuda12.1.1 tensorflow/
docker build -t ryancicak759/gpu-pytorch:cuda12.1.1 pytorch/
