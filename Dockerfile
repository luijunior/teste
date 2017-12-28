FROM openjdk:8-jre

MAINTAINER Luiz Antonio <luizgj@iprianga.com.br>

RUN set -x \
    && wget https://repository-master.mulesoft.org/nexus/content/repositories/releases/org/mule/distributions/mule-standalone/3.8.0/mule-standalone-3.8.0.tar.gz \
    && tar -xvf mule*.tar.gz

RUN apt-get update

RUN apt-get install -y git

ENTRYPOINT [  "sh", "-c", "./mule-standalone-3.8.0/bin/mule console" ]