FROM zookeeper:3.7

RUN apt-get update; apt-get upgrade; apt-get install -y awscli; apt-get clean

COPY --chown=zookeeper:zookeeper docker-entrypoint.sh /docker-entrypoint.sh

USER zookeeper:zookeeper

ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD [ "zkServer.sh", "start-foreground" ]
