FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y wget
RUN apt-get install -y default-jdk

RUN mkdir /app

WORKDIR /app

RUN wget https://dlcdn.apache.org/kafka/3.0.0/kafka_2.13-3.0.0.tgz
RUN tar -xzf kafka_2.13-3.0.0.tgz

VOLUME [ "./data", "/app/kafka_2.13-3.0.0" ]

WORKDIR /app/kafka_2.13-3.0.0

# EXPOSE 2181
# CMD ["bin/zookeeper-server-start.sh config/zookeeper.properties"]
CMD ["bin/kafka-server-start.sh config/server.properties"]
EXPOSE 9092