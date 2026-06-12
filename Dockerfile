FROM php:8.2-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Disable semua MPM dulu, lalu aktifkan hanya prefork
RUN a2dismod mpm_event mpm_worker 2>/dev/null || true && \
    a2enmod mpm_prefork

RUN a2enmod rewrite

COPY . /var/www/html/

EXPOSE 80