FROM php:7.1
RUN apt-get update &&  apt-get install -y libpq-dev libzip-dev git curl nano wget libpng12-dev libgmp-dev ssh python-dev nodejs npm --no-install-recommends && ln -s /usr/bin/nodejs /usr/bin/node
RUN node -v
RUN docker-php-ext-install pdo pdo_pgsql pgsql zip bcmath gd calendar gmp
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get -y install apt-transport-https
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - & echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list & apt-get update && apt-get -y install yarn
MAINTAINER Pawel Kolanecki <p.kolanecki@sygnisoft.com>
