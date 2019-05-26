FROM openjdk:11

RUN mkdir -p /usr/local/app

WORKDIR /usr/local/app

COPY target/demo-0.0.1-SNAPSHOT.jar /usr/local/app/

EXPOSE 8080

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=docker", "-jar","*.jar"]