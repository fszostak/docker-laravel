FROM bitnami/laravel:8-debian-10

# Install system dependencies
RUN sudo apt-get update && sudo apt-get install -y \
    git \
    curl \
    php-mysql \
    zip \
    unzip

# Clear cache
RUN sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/*

