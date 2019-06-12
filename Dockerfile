FROM alpine:edge

RUN set -xe \
    && mkdir -p /var/www/app \
    && apk add --update --no-cache \
        ca-certificates \
        curl \
        pcre \
        zlib \
        libpq \
        php7 \
        php7-bcmath \
        php7-ctype \
        php7-curl \
        php7-dom \
        php7-iconv \
        php7-intl \
        php7-json \
        php7-openssl \
        php7-opcache \
        php7-mbstring \
        php7-mcrypt \
        php7-pgsql \
        php7-pdo \
        php7-pdo_pgsql \
        php7-phar \
        php7-phpdbg \
        php7-posix \
        php7-session \
        php7-sockets \
        php7-xml \
        php7-xmlreader \
        php7-zip \
        php7-zlib \
        php7-pecl-xdebug

CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/app", "/var/www/app/router.php"]