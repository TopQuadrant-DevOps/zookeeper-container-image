FROM zookeeper:3.7

RUN apt-get update; apt-get upgrade; apt-get install -y awscli; apt-get clean

COPY docker-entrypoint.sh /docker-entrypoint.sh
