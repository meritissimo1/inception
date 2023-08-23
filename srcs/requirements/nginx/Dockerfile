FROM debian:bullseye-slim

RUN apt update && apt install -y nginx openssl procps

RUN mkdir -p /etc/nginx/ssl

RUN openssl genpkey -algorithm RSA -out /etc/nginx/ssl/selfsigned.key

RUN openssl req -x509 -new -key /etc/nginx/ssl/selfsigned.key -out /etc/nginx/ssl/selfsigned.crt -subj "/CN=localhost"

COPY conf/inception.conf /etc/nginx/conf.d/

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]