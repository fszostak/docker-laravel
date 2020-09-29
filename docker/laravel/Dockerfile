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

COPY docker/laravel/entrypoint.sh /entrypoint.sh
RUN sudo chmod 777 /app-entrypoint.sh
RUN head -n -2 /app-entrypoint.sh > /tmp/app-entrypoint.sh
RUN cat /entrypoint.sh >> /tmp/app-entrypoint.sh
RUN echo -n "\n" >> /tmp/app-entrypoint.sh
RUN tail -1 /app-entrypoint.sh >> /tmp/app-entrypoint.sh

RUN sudo cp /tmp/app-entrypoint.sh /app-entrypoint.sh

