FROM openjdk:8-jdk-alpine

LABEL maintainer="nemchinovrp@yandex.ru"

EXPOSE 9090

ARG JAR_FILE=target/admin_server-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} admin-server.jar

ENTRYPOINT ["java","-jar","/admin-server.jar"]