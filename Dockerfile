FROM ubuntu:16.04

LABEL "Maintainer"="Shubham Gupta"

RUN apt-get update && apt-get install -y python-software-properties software-properties-common

RUN apt-get install -y iputils-ping

RUN apt-get install -y vim
RUN apt-get install -y mysql-client

RUN apt-get update && apt-get install -y openjdk-8-jdk

RUN apt-get install -y maven

ADD . /usr/local/docker-git-hello-world

RUN cd /usr/local/docker-git-hello-world && mvn assembly:assembly

CMD ["java", "-cp", "/usr/local/docker-git-hello-world/target/docker-git-hello-world-0.0.1-SNAPSHOT-jar-with-dependencies.jar", "com.example.App"]