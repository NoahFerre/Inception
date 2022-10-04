FROM debian:buster

RUN apt-get update && \
	apt-get upgrade -y

RUN apt-get install -y php-fpm php-mysql wget

WORKDIR /tmp/

RUN mkdir -p /run/php

COPY www.conf /etc/php/7.3/fpm/pool.d

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar

RUN mv wp-cli.phar /usr/local/bin/wp-cli

WORKDIR /var/www/wordpress

COPY wp-config.php /tmp

COPY install.sh /tmp

RUN chmod 777 /tmp/install.sh

EXPOSE 9000

CMD ["sh", "/tmp/install.sh"]
