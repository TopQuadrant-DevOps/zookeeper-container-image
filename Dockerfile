FROM zookeeper:3.7

RUN apt-get update; apt-get upgrade; apt-get install -y awscli; apt-get clean

ADD docker-entrypoint.sh /docker-entrypoint.sh

RUN chown zookeeper:zookeeper /docker-entrypoint.sh; chmod 774 /docker-entrypoint.sh

USER zookeeper:zookeeper

ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD [ "zkServer.sh", "start-foreground" ]
