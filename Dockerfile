FROM ubuntu
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install openjdk-8-jdk -y
RUN  apt install wget -y
WORKDIR cd /opt/
RUN  wget http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.zip
RUN apt install unzip -y
RUN unzip apache-tomcat-8.5.50.zip
RUN apt-get upgrade -y
#RUN cp /var/lib/jenkins/workspace/Demo1_Pipeline/target/*.war /opt/apache-tomcat-8.5.50/webapp/
ADD target/maven-web-application.war /opt/apache-tomcat-8.5.50/webapp/
EXPOSE 8080
WORKDIR cd /opt/apache-tomcat-8.5.50/bin
ENTRYPOINT ("sh","catalina.sh","run")
