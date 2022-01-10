FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y wget
RUN apt-get install -y default-jdk

RUN mkdir /app
RUN mkdir /app/kafka_config

WORKDIR /app/kafka_config

EXPOSE 9092