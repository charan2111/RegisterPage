FROM openjdk:8
EXPOSE 8080
ADD target/docker-jenkins-integration-sampleapp.jar  docker-jenkins-integration-sampleapp.jar
Entrypoint ["java","jar","/docker-jenkins-integration-sampleapp.jar"]
goodnit
