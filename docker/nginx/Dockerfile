FROM nginx:alpine

MAINTAINER Martin Brychta <martin@brychta.name>

COPY etc/nginx.conf /etc/nginx/nginx.conf

RUN apk add --no-cache \
        openssl \
    && mkdir -p /etc/nginx/.ssl \
    && openssl req -subj '/CN=localhost' -x509 -newkey rsa:4096 -nodes -keyout /etc/nginx/.ssl/key.pem -out /etc/nginx/.ssl/cert.pem -days 3650 \
    && chmod 0400 /etc/nginx/.ssl/key.pem /etc/nginx/.ssl/cert.pem

WORKDIR /var/www/html