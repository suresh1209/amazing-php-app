# Start with the official php image and install deps
FROM php:7 as deps-image
WORKDIR /app
# Install composer and system deps
RUN apt-get update && \
    apt-get install -y --no-install-recommends git zip
RUN curl --silent --show-error https://getcomposer.org/installer | php
# Copy composer.json to the working directory and install app deps
COPY composer.json /app
RUN php composer.phar install

# Continue with the official PHP image and run the app
FROM php:7 as app-image
WORKDIR /app
# Copy the app deps from the deps stage
COPY  --from=deps-image /app/vendor /app/vendor
COPY . /app
CMD ["php", "-S", "0.0.0.0:8000", "/app/index.php"]
expose 8000
