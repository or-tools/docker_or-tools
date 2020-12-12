#!/usr/bin/env bash
set -ex

command -v docker

# Building
#docker build -t mizux/ortools -f alpine.Dockerfile .
docker build -t mizux/ortools -f python.Dockerfile .
#docker build -t mizux/ortools -f centos.Dockerfile .

# Inspecting
docker image ls mizux/ortools
docker history mizux/ortools

# Testing
wget https://raw.githubusercontent.com/google/or-tools/stable/ortools/constraint_solver/samples/vrp_global_span.py
docker run --rm --init -v "`pwd`":/tmp  -it mizux/ortools python3 /tmp/vrp_global_span.py

# vim: set tw=0
