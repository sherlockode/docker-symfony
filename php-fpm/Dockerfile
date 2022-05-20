FROM alpine:3.15

LABEL maintainer="Sherlockode <contact@sherlockode.fr>"

RUN apk add --update \
    php8-fpm \
    php8-apcu \
    php8-calendar \
    php8-ctype \
    php8-curl \
    php8-dom \
    php8-gd \
    php8-iconv \
    php8-pecl-imagick \
    php8-json \
    php8-intl \
    php8-pecl-mcrypt \
    php8-mbstring \
    php8-opcache \
    php8-openssl \
    php8-pdo \
    php8-pdo_mysql \
    php8-mysqli \
    php8-redis \
    php8-soap \
    php8-session \
    php8-simplexml \
    php8-xml \
    php8-xmlreader \
    php8-xmlwriter \
    php8-zlib \
    php8-phar \
    php8-tokenizer \
    php8-fileinfo \
    php8-xdebug \
    php8-zip \
    make \
    curl

RUN rm -rf /var/cache/apk/* && rm -rf /tmp/*

RUN ln -s /usr/bin/php8 /usr/bin/php

RUN curl --insecure https://getcomposer.org/installer | php && mv composer.phar /usr/bin/composer && chmod +x /usr/bin/composer

ADD symfony.ini /etc/php8/conf.d/
ADD symfony.ini /etc/php8/cli/conf.d/
ADD xdebug.ini /etc/php8/conf.d/xdebug.ini

ADD symfony.pool.conf /etc/php8/php-fpm.d/www.conf

CMD ["php-fpm8", "-F"]

WORKDIR /var/www/symfony
EXPOSE 9000
