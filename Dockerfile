#FROM java:8
FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD /target/spring-boot-jpa-docker-webapp.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=container","-jar","/app.jar"]
