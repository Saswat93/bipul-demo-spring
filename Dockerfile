FROM openjdk:8-alpine
MAINTAINER saswatpattnaik21@gmail.com
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY  target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo-1.0.jar
WORKDIR $PROJECT_HOME
CMD ["java", "-Dspring.data.mongodb.uri=mongodb://mongo:27017/spring-mongo","-Djava.security.egd=file:/dev/./urandom","-jar","./spring-boot-mongo.jar"]
