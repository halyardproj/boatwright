FROM golang:1.13.8 as builder
RUN apt-get update && apt-get install -y
WORKDIR /tmp
COPY . .
RUN cd install \
bash install.sh kubectl
