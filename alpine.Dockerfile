# Create a virtual environment with all tools installed
# ref: https://hub.docker.com/_/alpine
FROM alpine:edge
LABEL maintainer="mizux.dev@gmail.com"
RUN apk add --no-cache py3-pip
RUN python3 -m pip install ortools
CMD ["python3"]
