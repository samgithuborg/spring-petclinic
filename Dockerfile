FROM ubuntu
RUN apt-get update -y && apt-get install default-jre -y && apt-get install default-jdk -y
ADD /var/lib/jenkins/spring-petclinic/spring-petclinic-2.4.2.jar
