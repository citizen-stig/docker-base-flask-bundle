# Used for run flask and other stuff using supervisor

FROM ubuntu:14.04
MAINTAINER Nikolay Golub <nikolay.v.golub@gmail.com>
# Setup flask application
RUN apt-get update && \
    apt-get install -y libpq-dev supervisor rabbitmq-server libxml2-dev libxslt1-dev libssl-dev libffi-dev python-dev python-pip
