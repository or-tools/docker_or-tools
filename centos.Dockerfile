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
