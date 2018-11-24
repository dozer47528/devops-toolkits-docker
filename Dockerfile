FROM ubuntu:18.04

RUN apt update -y

RUN apt install -y curl git zsh

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

COPY .zshrc /root/.zshrc