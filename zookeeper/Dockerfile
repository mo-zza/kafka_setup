FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y upgrade
RUN apt-get install -y wget
RUN apt-get install -y default-jdk

RUN mkdir /app
RUN mkdir /app/kafka_config
VOLUME [ "./kafka_2.13-3.0.0", "kafka_config" ]

WORKDIR /app

CMD ["/app/kafka_config/bin/zookeeper-server-start.sh /app/kafka_config/config/zookeeper.properties"]
EXPOSE 2181