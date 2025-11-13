# Creates a build image with all the necessary tools to build IceCreamParlor microservices

FROM ubuntu:25.04

#ENV mysql_host=host.docker.internal
ENV mysql_port=3306
ENV mysql_database=test
ENV mysql_user=root
ENV mysql_password=ThisDBExistsOnlyDuringTest
ENV orderservice_spinup_test_container=false

RUN apt-get update
RUN apt-get install -y curl git nodejs openjdk-25-jdk maven
RUN echo "export JAVA_HOME=/usr/lib/jvm/java-25-openjdk-amd64 >>/root/.bashrc"
RUN curl -sL https://deb.nodesource.com/setup_24.x | sh
RUN curl -L https://www.npmjs.com/install.sh | sh

RUN mkdir /microservices
COPY scripts /scripts

WORKDIR /microservices

ENTRYPOINT ["/bin/bash"]
