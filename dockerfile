FROM golang:latest
RUN apt-get update && apt-get install -y \
WORKDIR /tmp
ADD install/install.sh
RUN ./install.sh kubectl-linux