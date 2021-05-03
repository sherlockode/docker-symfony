FROM alpine:3.10

LABEL maintainer="Sherlockode <contact@sherlockode.fr>"

RUN apk add --no-cache --update nginx

ADD entrypoint.sh /usr/local/bin/entrypoint.sh
ADD nginx.conf /etc/nginx/
ADD symfony.conf /etc/nginx/conf.d/default.conf
ADD upstream.conf /etc/nginx/conf.d/upstream.conf

RUN adduser -D -g '' -G www-data www-data

ENV FPM_HOST php
ENV FPM_PORT 9000

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["nginx"]

EXPOSE 80
EXPOSE 443
