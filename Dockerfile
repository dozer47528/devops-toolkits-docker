FROM ubuntu:18.04

RUN apt update -y

RUN apt install -y curl git zsh wget python-pip net-tools htop mysql-client

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

COPY .zshrc /root/.zshrc