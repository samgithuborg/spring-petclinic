FROM ubuntu
RUN apt-get update -y && apt-get install default-jre -y && apt-get install default-jdk -y
*ADD /var/lib/jenkins/workspace/mavenproject /var/lib/jenkins/target/spring http://18.224.171.148:8080/job/mavenproject/ws/target/spring-petclinic-2.4.2.jar
