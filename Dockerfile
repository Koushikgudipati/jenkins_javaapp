FROM ubuntu:latest
RUN apt-get update \
    && apt-get install -y \
    wget \
    curl \
    telnet \
    docker

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.11.5/bin/linux/amd64/kubectl \
    && chmod +x ./kubectl \
    && mv ./kubectl /usr/local/bin/kubectl
