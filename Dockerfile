FROM ubuntu:18.04

RUN apt update -y
RUN apt install -y curl 
RUN apt install -y git
RUN apt install -y zsh
RUN apt install -y wget
RUN apt install -y net-tools
RUN apt install -y htop
RUN apt install -y mycli
RUN apt install -y mysql-client
RUN apt install -y iputils-ping
RUN apt install -y dnsutils
RUN apt install -y telnet
RUN apt install -y redis-tools
RUN apt install -y lsof
RUN apt install -y iproute2
RUN apt install -y tcpdump
RUN apt install -y vim
RUN apt install -y sysbench

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

COPY .zshrc /root/.zshrc
