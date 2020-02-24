FROM golang:1.13.8 as builder
RUN apt-get update && apt-get install -y
WORKDIR /tmp
ADD install/install.sh .
ADD install/install-kubectl.sh
RUN ./install.sh kubectl
