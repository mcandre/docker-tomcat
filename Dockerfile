FROM mcandre/docker-java
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV CATALINA_HOME=/usr/share/tomcat6
ENV CATALINA_BASE=/var/lib/tomcat6
ENV CATALINA_OPTS="-Djava.security.egd=file:/dev/urandom"
RUN apt-get update -y && \
    apt-get install -y tomcat6 && \
    mkdir /var/lib/tomcat6/temp && \
    chown -R tomcat6:tomcat6 /var/lib/tomcat6/temp
EXPOSE 8080
ENTRYPOINT /usr/share/tomcat6/bin/catalina.sh run
