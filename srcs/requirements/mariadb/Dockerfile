FROM debian:bullseye

RUN apt update && apt install -y mariadb-server

COPY ./conf/my.cnf /etc/mysql/my.cnf

COPY ./script/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 3306

RUN mkdir -p /run/mysqld && chown mysql:mysql /run/mysqld/ && \
     chmod 755 /run/mysqld/

ENTRYPOINT ["./entrypoint.sh"]
