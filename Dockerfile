FROM ubuntu:12.04
MAINTAINER Jason Kraus "jason@montagable.com"
RUN	echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get -y update
RUN apt-get install -y redis-server python
RUN /etc/init.d/redis-server stop
ADD ./redis.conf /etc/redis/redis.conf

EXPOSE 6379
CMD ["/usr/bin/redis-server", "/etc/redis/redis.conf"]

