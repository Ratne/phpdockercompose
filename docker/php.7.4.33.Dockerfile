FROM php:7.4.33-fpm
RUN docker-php-ext-install pdo_mysql
RUN apt-get update && apt-get install -y \
libfreetype-dev \
libjpeg62-turbo-dev \
wget \
curl \
libpng-dev \
libc-client-dev libkrb5-dev \
libonig-dev \
zlib1g-dev libicu-dev \
zip \
unzip \
libxml2-dev \
libcurl4-openssl-dev \
libzip-dev \
libmagickwand-dev \
&& docker-php-ext-configure gd --with-freetype --with-jpeg \
&& docker-php-ext-install -j$(nproc) gd

RUN docker-php-ext-configure imap --with-kerberos --with-imap-ssl && docker-php-ext-install imap
RUN docker-php-ext-install zip
RUN docker-php-ext-install curl
RUN docker-php-ext-install intl
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install xml
RUN pecl install imagick-3.7.0;
RUN docker-php-ext-enable imagick;