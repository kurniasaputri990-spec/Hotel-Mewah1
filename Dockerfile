FROM php:8.2-apache

# Install ekstensi mysqli & pdo_mysql
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy semua file project ke server
COPY . /var/www/html/

# Aktifkan mod rewrite (opsional, untuk .htaccess)
RUN a2enmod rewrite

EXPOSE 80