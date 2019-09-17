FROM mysql:5.7

RUN chown -R mysql:root /var/lib/mysql/
RUN mkdir /script-mysql

COPY database_schema.sql /docker-entrypoint-initdb.d/

ARG MYSQL_DATABASE=notes
ARG MYSQL_USER=notes-api
ARG MYSQL_PASSWORD=notes-api
ARG MYSQL_ALLOW_EMPTY_PASSWORD=yes

ENV MYSQL_DATABASE=${MYSQL_DATABASE}
ENV MYSQL_USER=${MYSQL_USER}
ENV MYSQL_PASSWORD=${MYSQL_PASSWORD}
ENV MYSQL_ALLOW_EMPTY_PASSWORD=${MYSQL_ALLOW_EMPTY_PASSWORD}

CMD ["mysqld"]
EXPOSE 3306

