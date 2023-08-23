FROM debian:bullseye-slim

RUN apt update && apt install -y mariadb-server

COPY ./conf/mdb.cnf /etc/mysql/mdb.cnf
COPY ./script/entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE 3306

RUN mkdir -p /run/mysqld && chmod 777 /run/mysqld/

ENTRYPOINT ["/entrypoint.sh"]
CMD ["mysqld_safe"]
