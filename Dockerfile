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