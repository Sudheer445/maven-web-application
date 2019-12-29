FROM ubuntu
RUN sudo apt-get update
RUN sudo apt-get upgrade
RUN sudo apt-get install openjdk-8-jdk -y
RUN sudo apt-get http://mirrors.estointernet.in/apache/tomcat/tomcat-9/v9.0.30/bin/apache-tomcat-9.0.30.tar.gz
RUN tar -xyz apache-tomcat-9.0.30.tar.gz
RUN apt-get update
COPY cp /var/lib/jenkins/workspace/Jenkins-Pipeline-Job/target/maven-web-app*.web /usr/local/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
