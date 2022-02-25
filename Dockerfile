FROM php:7.4-fpm

RUN apt-get update && apt-get install -y \
    && docker-php-ext-install mysqli
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
ENV TZ=Europe/Moscow
RUN printf '[PHP]\ndate.timezone = "Europe/Moscow"\n' > /usr/local/etc/php/conf.d/tzone.ini

