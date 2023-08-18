FROM debian:bullseye-slim

RUN apt update && apt install -y nginx

COPY conf/nginx.conf /etc/nginx/conf.d/

ENTRYPOINT ["nginx", "-g", "daemon off;"]
