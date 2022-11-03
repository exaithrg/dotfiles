#!/bin/bash
# run minecraft with NVIDIA-gpu
# ubuntu doesn't have prime-run. use script given in
# https://blog.csdn.net/zjh919/article/details/127415588
/usr/bin/prime-run /usr/bin/java "$@"

