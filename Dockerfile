FROM ubuntu:latest
RUN apt-get update && apt-get -y  upgrade
RUN apt-get -y install openjdk-8-jdk wget
RUN mkdir /usr/local/tomcat
RUN wget https://downloads.apache.org/tomcat/tomcat-10/v10.0.27/bin/apache-tomcat-10.0.27.tar.gz -O /tmp/tomcat.tar.gz
RUN cd /tmp && tar xvfz tomcat.tar.gz
RUN cp -Rv /tmp/apache-tomcat-10.0.27/* /usr/local/tomcat/
EXPOSE 8090
CMD /usr/local/tomcat/bin/catalina.sh run
