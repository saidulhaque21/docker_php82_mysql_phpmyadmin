FROM php:8.2

# Install additional PHP extensions
RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd


RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# (Optional) Additional configurations or commands can be added here as needed

# Set working directory
WORKDIR /var/www/html

# (Optional) Copy your PHP application files into the container
COPY . /var/www/html

# (Optional) Expose port if you need to access a web server inside the container
EXPOSE 80

# (Optional) Define default command to start a server if needed
CMD ["php", "-S", "0.0.0.0:80"]