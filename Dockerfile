FROM ubuntu:12.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y
RUN apt-get install -y python-software-properties

RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update -y

# Accept Oracle JDK license
RUN echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections

RUN apt-get install -y oracle-java7-installer ca-certificates

ENV CATALINA_HOME=/usr/share/tomcat7
ENV CATALINA_BASE=/var/lib/tomcat7
ENV CATALINA_OPTS="-Djava.security.egd=file:/dev/urandom"

RUN apt-get install -y tomcat7

RUN mkdir /var/lib/tomcat7/temp
RUN chown -R tomcat7:tomcat7 /var/lib/tomcat7/temp

EXPOSE 8080

ENTRYPOINT /usr/share/tomcat7/bin/catalina.sh run
