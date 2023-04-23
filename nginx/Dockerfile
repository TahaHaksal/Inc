FROM debian:buster

RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx

RUN rm /etc/nginx/sites-enabled/default

COPY nginx.conf /etc/nginx/nginx.conf

COPY ./html/index.html /var/www/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]