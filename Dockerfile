FROM php:7.0-apache
MAINTAINER duyetdev

RUN a2enmod rewrite filter deflate headers expires mod_version proxy_http.load
RUN apache2ctl restart

# Mysql
RUN apt-get install mysql-server mysql-client

# Ext
RUN apt-get install php5 php5-mysql libapache2-mod-php5 php5-curl php5-json screen


COPY php.ini /usr/local/etc/php/
COPY . /var/www/html/
