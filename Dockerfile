FROM openjdk:15-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","-Dspring.profiles.active=prod","/app.jar"]