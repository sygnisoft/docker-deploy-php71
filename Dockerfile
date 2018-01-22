FROM php:7.1
RUN apt-get update && buildDeps="libpq-dev libzip-dev" && apt-get install -y $buildDeps git curl nano wget libpng12-dev libgmp-dev ssh python-dev nodejs npm --no-install-recommends
RUN docker-php-ext-install pdo pdo_pgsql pgsql zip bcmath gd calendar gmp
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN ln -s /usr/bin/nodejs /usr/bin/node
RUN npm install -g bower

MAINTAINER Pawel Kolanecki <p.kolanecki@sygnisoft.com>
