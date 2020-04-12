FROM jenkins/jenkins:lts

#Informacion de Metadata
LABEL maintainer="brianpericon.e92@gmail.com"
LABEL version="1.0"

USER root
RUN mkdir /var/log/jenkins
RUN mkdir /var/cache/jenkins
RUN chown -R jenkins:jenkins /var/log/jenkins
RUN chown -R jenkins:jenkins /var/cache/jenkins

USER jenkins
 
ENV JAVA_OPTS="-Xmx8192m -Djava.util.logging.config.file=/var/jenkins_home/log.properties"
ENV JENKINS_OPTS="--handlerCountMax=300 --logfile=/var/log/jenkins/jenkins.log --webroot=/var/cache/jenkins/war"