appengine-java-maven
===========================

This repository contains **Dockerfile** for [Java](https://www.java.com/), Maven and Appengine Java SDK for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/ciandtsoftware/appengine-java-maven/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).

### Base Docker Image

* [dockerfile/java:oracle-java7](http://dockerfile.github.io/#/java)


### Docker Tags

`/ciandtsoftware/appengine-java-maven` provides multiple tagged images:

* `latest` (default): Oracle Java 7 JDK, Maven 3.2.3, Appengine Java SDK 1.9.15 
* ...

For example, you can run a `Oracle Java 8` container with the following command:

    docker run -it --rm dockerfile/java:oracle-java8 java -version


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/ciandtsoftware/appengine-java-maven/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull patou/docker-appengine-java-maven`

   (alternatively, you can build an image from Dockerfile: `docker build -t="dockerfile/java" github.com/patou/docker-appengine-java-maven`)


### Usage

    docker run -it --rm patou/docker-appengine-java-maven

#### Run `java`

    docker run -it --rm patou/docker-appengine-java-maven java

#### Run `mvn`

    docker run -it --rm patou/docker-appengine-java-maven mvn
