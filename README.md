https://hub.docker.com/r/mizux/ortools

# Introduction
Minimal docker image providing python3 with ortools

# Building
Dockerfile:
```dockerfile
# Create a virtual environment with all tools installed
# ref: https://hub.docker.com/_/centos
FROM centos:latest
LABEL maintainer="mizux.dev@gmail.com"
RUN yum -y update \
&& yum -y install python36 \
&& yum clean all \
&& rm -rf /var/cache/yum
RUN python3 -m pip install ortools
CMD ["python3"]
```

cmd:
```sh
docker build -t mizux/ortools .
```

# Inspecting
```sh
docker image ls mizux/ortools
docker history mizux/ortools
```

# Publishing
```sh
docker push mizux/ortools
```

# Testing
```sh
wget https://raw.githubusercontent.com/google/or-tools/stable/ortools/constraint_solver/samples/vrp_global_span.py
docker run --rm --init -v "`pwd`":/tmp  -it mizux/ortools python3 /tmp/vrp_global_span.py
```

# Annex
```sh
$ docker pull python:latest
$ docker image ls python:latest         
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
python              latest              f88b2f81f83a        7 days ago          933MB

$ docker pull centos:8
$ docker image ls centos:8     
REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
centos              8                   470671670cac        6 weeks ago         237MB
```
