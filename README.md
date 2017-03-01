# robidocker

[![Build Status](https://travis-ci.org/robisys/robidocker.svg)](https://travis-ci.org/robisys/robidocker)

[![Build LINIT Status](https://lint.travis-ci.org/)](http://lint.travis-ci.org/robisys/robidocker)

## Documentation
[![Build Status](https://docs.travis-ci.com/)](https://docs.travis-ci.com/)
Robidocker

[Getting started with Docker by Dockerizing this Blog](http://bencane.com/2015/12/01/getting-started-with-docker-by-dockerizing-this-blog/)

[customizing](https://docs.travis-ci.com/user/customizing-the-build)

[Using Travis CI to test Docker builds](http://bencane.com/2016/01/11/using-travis-ci-to-test-docker-builds/)

[Using Travis.ci to build Docker images](https://sebest.github.io/post/using-travis-ci-to-build-docker-images/)

[How to set up Docker containers in Travis CI](https://mike42.me/blog/how-to-set-up-docker-containers-in-travis-ci)

[Running Docker in a Travis CI build.](https://github.com/moul/travis-docker)

[Example ](https://github.com/moul/travis-docker-example)


[ compose-file](https://docs.docker.com/compose/compose-file/)

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

