FROM ubuntu
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install openjdk-8-jdk -y
RUN  apt install wget -y
WORKDIR cd /opt/
RUN  wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.zip
RUN apt install unzip -y
RUN unzip apache-tomcat-8.5.50.zipapache-tomcat-8.5.50
RUN apt-get update
COPY com/mt/maven-web-application/2.1.1/maven-web-application-2.1.1.war /opt/apache-tomcat-8.5.50/webapp/
EXPOSE 8080
CMD /opt/apache-tomcat-8.5.50/bin/catalina.sh run
