FROM php:8-fpm
RUN apt-get update

# zlib support
RUN apt-get install -y zlib1g-dev libzip-dev zip && docker-php-ext-install zip

# cURL
RUN apt-get install -y libcurl4-openssl-dev && docker-php-ext-install curl

# exif
RUN docker-php-ext-install exif 

# gd
RUN apt-get install -y libpng-dev && docker-php-ext-install gd

RUN apt-get install -y libmagickwand-dev libmagickcore-dev
RUN pecl install imagick
RUN docker-php-ext-enable imagick

RUN docker-php-ext-install intl

RUN apt-get install -y libldap-dev && docker-php-ext-install ldap

RUN pecl install redis && docker-php-ext-enable redis

RUN pecl install uuid && docker-php-ext-enable uuid

VOLUME /var/www/html
RUN chown -R www-data:www-data /var/www/html


# compile error
# pecl install xxtea
# docker-php-ext-enable xtea

CMD ["php-fpm"]
