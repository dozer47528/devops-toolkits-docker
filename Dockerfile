FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    ca-certificates sudo curl net-tools htop iputils-ping dnsutils telnet lsof iproute2 tcpdump vim ssldump iptables tree jq w3m && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY ./.bashrc /root/.bashrc
COPY ./scripts /scripts
RUN chmod +x /scripts/*

ENTRYPOINT /bin/bash