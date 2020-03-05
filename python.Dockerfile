# Create a virtual environment with all tools installed
# ref: https://hub.docker.com/_/python
FROM python:latest
LABEL maintainer="mizux.dev@gmail.com"
RUN python3 -m pip install ortools
CMD ["python"]
