FROM ubuntu:20.04

RUN apt update && \
    DEBIAN_FRONTEND="noninteractive" apt install -y curl gnupg && \
    rm -rf /var/lib/apt/lists/*


RUN curl https://get.helm.sh/helm-v3.3.4-linux-amd64.tar.gz | tar xz && \
    mv linux-amd64/helm /usr/bin

ENTRYPOINT ["/usr/bin/helm"]
