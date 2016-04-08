# Used for run flask and other stuff using supervisor
FROM ubuntu:14.04

MAINTAINER Nikolay Golub <nikolay.v.golub@gmail.com>


RUN apt-get update && \
    apt-get install -y git libpq-dev libjpeg-dev supervisor rabbitmq-server redis-server libxml2-dev libxslt1-dev libssl-dev libffi-dev python3-dev python3-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*  && \
    pip3 install psycopg2==2.6.1 gevent==1.1.1 lxml==3.5.0
