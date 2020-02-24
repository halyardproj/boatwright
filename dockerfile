FROM golang:latest
RUN apt-get update && apt-get install -y \
WORKDIR /tmp
RUN ./install.sh kubectl
