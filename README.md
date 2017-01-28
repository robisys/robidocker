# robidocker

[![Build Status](https://travis-ci.org/robisys/robidocker.svg)](https://travis-ci.org/robisys/robidocker)

[![Build LINIT Status](https://travis-ci.org/robisys/robidocker.svg)](http://lint.travis-ci.org/robisys/robidocker)

## Documentation
[![Build Status](https://docs.travis-ci.com/)](https://docs.travis-ci.com/)
Robidocker
## Build Lifecycle
install 

deployment

## Customizing the Build 
File:.travis.yml

sudo: required

language: ruby

services:
- docker

   
before_install:
- docker build -t robidock/myrunning .
- docker run --name testus  robidock/myrunning
- docker ps -a
- docker images
- docker login -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD" registry.example.com

script:
- docker images robidock/myrunning

after_success:
 - if [ "$TRAVIS_BRANCH" == "master" ]; then
     docker login -e="$DOCKER_EMAIL" -u="$DOCKER_USERNAME" -p="$DOCKER_PASSWORD";
   docker push robidock/myrunning;
   fi

