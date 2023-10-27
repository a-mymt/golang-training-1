FROM ubuntu:22.04

RUN apt update && apt upgrade -y
RUN apt install -y git python3 python3-pip golang-go vim
RUN apt autoremove -y &&\
    apt clean &&\
    rm -rf /usr/local/src/*
