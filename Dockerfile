FROM ubuntu:22.04

LABEL maintainer="a-mymt"

ARG GITHUB_USER_NAME
ARG GITHUB_USER_EMAIL

RUN apt update && apt upgrade -y
RUN apt install -y git python3 python3-pip golang-go vim
RUN apt autoremove -y &&\
    apt clean &&\
    rm -rf /usr/local/src/*
WORKDIR /work
RUN git clone https://github.com/a-mymt/golang-training-1.git
RUN git config --global user.name $GITHUB_USER_NAME
RUN git config --global user.email $GITHUB_USER_EMAILabc
