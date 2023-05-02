FROM debian:buster

<<<<<<< HEAD
ARG DOMAIN_NAME

#-y flag for assume yes to update and upgrade stuff
RUN apt-get update && apt-get upgrade -y

#install nginx and other usefull applications
RUN apt-get install -y openssl nginx

#making a dir for storing the ssl keys and cert
RUN mkdir -p /var/ssl

# making a new ssl key
RUN openssl req -x509 -newkey rsa:2048 -nodes \
    -out /var/ssl/nginx_server.crt \
    -keyout /var/ssl/nginx_server.key -subj "/C=/ST=/L=/O=/CN=${DOMAIN_NAME}"

#removing the default config
RUN rm -f /etc/nginx/sites-available/default && rm -f /etc/nginx/sites-enabled/default

#copy the config for nginx from the local directory to the directory in the image
COPY conf/nginx.conf /etc/nginx/sites-available/nginx.conf

RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-enabled/nginx.conf

#the command run when this container starts
ENTRYPOINT ["nginx", "-g", "daemon off;"]
=======
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nginx openssl curl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/nginx-selfsigned.key \
    -out /etc/ssl/certs/nginx-selfsigned.crt \
    -subj "/C=TR/ST=/L=ISTANBUL/O=42-ecole/CN=${DOMAIN_NAME}"

COPY ./conf/nginx.conf /etc/nginx/sites-available/nginx.conf

# RUN ln -s /etc/nginx/sites-available/nginx.conf /etc/nginx/sites-available/nginx.conf

CMD ["nginx", "-g", "daemon off;"]
>>>>>>> 2a8568048bed8f8ed809d1e5ecb3250b06a626f0
