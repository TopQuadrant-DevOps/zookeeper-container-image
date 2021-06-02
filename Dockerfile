FROM zookeeper:3.7

RUN apt-get update; apt-get upgrade; apt-get install -y awscli; apt-get clean

ADD docker-entrypoint.sh /docker-entrypoint.sh

RUN chmod 744 /docker-entrypoint.sh
