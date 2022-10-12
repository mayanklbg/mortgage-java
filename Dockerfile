FROM openjdk:16-alpine3.13

RUN addgroup -S spring && adduser -S spring -G spring
USER spring:spring
COPY build/libs/lgb-springboot-template-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
