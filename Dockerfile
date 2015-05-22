FROM mcandre/docker-java
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV CATALINA_HOME=/usr/share/tomcat7
ENV CATALINA_BASE=/var/lib/tomcat7
ENV CATALINA_OPTS="-Djava.security.egd=file:/dev/urandom"
RUN apt-get update -y && \
    apt-get install -y tomcat7 && \
    mkdir /var/lib/tomcat7/temp && \
    chown -R tomcat7:tomcat7 /var/lib/tomcat7/temp
EXPOSE 8080
ENTRYPOINT /usr/share/tomcat7/bin/catalina.sh run
