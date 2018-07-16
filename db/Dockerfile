FROM mysql:latest

ADD ./sql/init /docker-entrypoint-initdb.d
ADD ./conf /etc/mysql/conf.d

ENV MYSQL_ROOT_PASSWORD=root
