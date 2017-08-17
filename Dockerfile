FROM dj4ngo/alpine-rpi

MAINTAINER sboyron <sebastien@boyron.eu>

RUN apk update && \
apk upgrade && \
apk add --update mysql && \
rm -rf /var/cache/apk/* 

WORKDIR /app

VOLUME /app

COPY startup.sh /startup.sh
COPY my.cnf /etc/mysql/my.cnf

EXPOSE 3306
CMD ["/startup.sh"]
