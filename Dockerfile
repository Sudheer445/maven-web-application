FROM ubuntu
RUN apt-get update
RUN apt-get upgrade
RUN apt-get install openjdk-8-jdk -y
RUN apt-get http://apachemirror.wuchna.com/tomcat/tomcat-8/v8.5.50/bin/apache-tomcat-8.5.50.zip
RUN wget install unzip -y
RUN unzip apache-tomcat-8.5.50.zip
RUN apt-get update
COPY cp /var/lib/jenkins/workspace/Jenkins-Pipeline-Job/target/maven-web-app*.web /usr/local/tomcat/webapps/
EXPOSE 8080
CMD /usr/local/tomcat/bin/catalina.sh run
