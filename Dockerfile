# Used for run flask and other stuff using supervisor
FROM ubuntu:14.04

MAINTAINER Nikolay Golub <nikolay.v.golub@gmail.com>

RUN apt-get update && \
    apt-get install -y libpq-dev supervisor rabbitmq-server redis-server libxml2-dev libxslt1-dev libssl-dev libffi-dev python-dev python-pip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    pip install psycopg2==2.6.1 gevent==1.1b6 lxml==3.4.4
