#!/bin/bash
GDB="gdb -ex run --args "
VALGRIND="valgrind"

mpirun -n 3 xterm -hold -e $GDB python convnet.py \
 --data-path=/home/power/datasets/cifar-10-py-colmajor \
 --save-path=/scratch/tmp \
 --test-range=5 \
 --train-range=1-4 \
 --layer-def=./example-layers/layers-conv-local-11pct.cfg \
 --layer-params=./example-layers/layer-params-conv-local-11pct.cfg \
 --data-provider=cifar \
 --test-freq=10 \
 --mini=512
