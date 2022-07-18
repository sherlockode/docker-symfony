FROM alpine:3.16

LABEL maintainer="Sherlockode <contact@sherlockode.fr>"

RUN apk add --update \
    php81-fpm \
    php81-apcu \
    php81-calendar \
    php81-ctype \
    php81-curl \
    php81-dom \
    php81-gd \
    php81-iconv \
    php81-pecl-imagick \
    php81-json \
    php81-intl \
    php8-pecl-mcrypt \
    php81-mbstring \
    php81-opcache \
    php81-openssl \
    php81-pdo \
    php81-pdo_mysql \
    php81-mysqli \
    php81-redis \
    php81-soap \
    php81-session \
    php81-simplexml \
    php81-xml \
    php81-xmlreader \
    php81-xmlwriter \
    php81-phar \
    php81-tokenizer \
    php81-fileinfo \
    php81-pecl-xdebug \
    php81-zip \
    make \
    curl

RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*

RUN ln -s /usr/bin/php81 /usr/bin/php

RUN curl --insecure https://getcomposer.org/installer | php && mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer

ADD symfony.ini /etc/php81/conf.d/
ADD symfony.ini /etc/php81/cli/conf.d/
ADD xdebug.ini /etc/php81/conf.d/xdebug.ini

ADD symfony.pool.conf /etc/php81/php-fpm.d/www.conf

CMD ["php-fpm81", "-F"]

WORKDIR /var/www/symfony

EXPOSE 9000
