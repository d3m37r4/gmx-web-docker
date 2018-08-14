FROM php:7.1-fpm-alpine

RUN docker-php-ext-install pdo_mysql \
	&& apk add --no-cache $PHPIZE_DEPS \
    && pecl install xdebug-2.5.0 \
    && docker-php-ext-enable xdebug \
    && echo 'xdebug.remote_port=9000' >> /usr/local/etc/php/php.ini \
    && echo 'xdebug.remote_enable=1' >> /usr/local/etc/php/php.ini \
    && echo 'xdebug.remote_connect_back=1' >> /usr/local/etc/php/php.ini