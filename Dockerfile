# Pull base image.
FROM maven:3-jdk-7
MAINTAINER Patrice de Saint Steban <patrice@desaintsteban.fr>

# Install.
RUN \
  apt-get update &&\ 
  apt-get install -y curl git

#Install appengine java sdk
ENV GAE_SDK_VERSION 1.9.46
RUN \
   wget http://storage.googleapis.com/appengine-sdks/featured/appengine-java-sdk-${GAE_SDK_VERSION}.zip -nv -P /tmp/ &&\
   mkdir -p /usr/local/google/appengine-java-sdk &&\
   unzip /tmp/appengine-java-sdk-${GAE_SDK_VERSION}.zip -d /usr/local/google/appengine-java-sdks/ &&\
   rm -rf /tmp/appengine-java-sdk-${GAE_SDK_VERSION}.zip

ENV PATH /usr/local/google/appengine-java-sdks/appengine-java-sdk-${GAE_SDK_VERSION}/bin:${PATH}

CMD ["bash"]
