FROM openjdk:11

ADD target/demo-0.0.1-SNAPSHOT.jar demo.jar

RUN sh -c 'touch demo.jar'

EXPOSE 8080

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=docker", "-jar","/demo.jar"]