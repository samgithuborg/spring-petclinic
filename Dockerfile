FROM ubuntu
RUN sudo apt-get update -y && sudo apt-get install default-jre -y && sudo apt-get install default-jdk -y
ADD /var/lib/jenkins/workspace/mavenproject/target/spring-petclinic-2.4.2.jar /opt/
