FROM debian:stretch

MAINTAINER Sherlockode <contact@sherlockode.fr>

RUN apt-get update \
    && apt-get -y install apache2 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN a2enmod proxy proxy_fcgi rewrite

ENV PHP_SERVER php
ADD symfony.conf /etc/apache2/sites-available/000-default.conf

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

EXPOSE 80
EXPOSE 443
