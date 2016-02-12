FROM java
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
ENV CATALINA_HOME=/usr/share/tomcat8
ENV CATALINA_BASE=/var/lib/tomcat8
ENV CATALINA_OPTS="-Djava.security.egd=file:/dev/urandom"
RUN echo "deb http://cz.archive.ubuntu.com/ubuntu vivid main universe" >> /etc/apt/sources.list && \
    apt-get update -y && \
    apt-get install -y --force-yes tomcat8 && \
    mkdir /var/lib/tomcat8/temp && \
    chown -R tomcat8:tomcat8 /var/lib/tomcat8/temp
EXPOSE 8080
ENTRYPOINT ["/usr/share/tomcat8/bin/catalina.sh", "run"]
