FROM zookeeper:3.7

RUN apt-get update; apt-get upgrade; apt-get install awscli; apt-get clean

ADD docker-entrypoint.sh /docker-entrypoint.sh
