FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -y
RUN apt-get install -y \
    curl git zsh wget net-tools htop mycli mysql-client \
    iputils-ping dnsutils telnet redis-tools lsof iproute2 \
    tcpdump vim sysbench ssldump \
    && apt-get clean

RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl && chmod +x ./kubectl && mv ./kubectl /usr/local/bin/kubectl
RUN wget https://github.com/fortio/fortio/releases/download/v1.4.1/fortio_1.4.1_amd64.deb && dpkg -i fortio_1.4.1_amd64.deb && rm -f fortio_1.4.1_amd64.deb
RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

COPY .zshrc /root/.zshrc