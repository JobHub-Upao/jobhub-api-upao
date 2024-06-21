FROM openjdk:17-jdk-slim
ARG JAR_FILE=target/jobhub-api-1.0.0.jar
COPY ${JAR_FILE} jobhub-api.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "jobhub-api.jar"]