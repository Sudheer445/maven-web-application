FROM ubuntu
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install openjdk-8-jdk -y
RUN apt-get update
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
