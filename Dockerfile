## Dockerfile that generates an instance of http://bencane.com

FROM nginx:latest
MAINTAINER Benjamin Cane <ben@bencane.com>

## Install python and pip
RUN apt-get update
RUN apt-get install -y python-dev python-pip

## Create a directory for required files
RUN mkdir -p /build/

## Add requirements file and run pip
ADD requirements.txt /build/
RUN pip install -r /build/requirements.txt

## Add blog code nd required files
ADD static /build/static
ADD templates /build/templates
ADD hamerkop /build/
ADD config.yml /build/
ADD articles /build/articles

## Run Generator
RUN /build/hamerkop -c /build/config.yml