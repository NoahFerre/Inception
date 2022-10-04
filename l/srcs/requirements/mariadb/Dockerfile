FROM alpine:3.15

RUN apk update && apk upgrade && apk add mariadb mariadb-client mariadb-common openrc

RUN openrc && touch /run/openrc/softlevel

COPY install.sh tmp/

RUN chmod +x /tmp/install.sh

COPY mariadb-server.cnf /etc/my.cnf.d/

EXPOSE 3306

ENTRYPOINT ["sh", "/tmp/install.sh"]
