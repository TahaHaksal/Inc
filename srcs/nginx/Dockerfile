FROM debian:buster

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nginx openssl curl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=TR/ST=/L=ISTANBUL/O=42-ecole/CN=${DOMAIN_NAME}"

COPY ./conf/nginx.conf /etc/nginx/sites-available/nginx.conf

# RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-available/nginx.conf

CMD ["nginx", "-g", "daemon off;"]