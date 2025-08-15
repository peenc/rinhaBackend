FROM maven:3.9.8-eclipse-temurin-21 AS builder
WORKDIR /app

COPY pom.xml .
COPY src ./src

RUN mvn clean package -DskipTests

FROM eclipse-temurin:21-jdk
WORKDIR /app

COPY --from=builder /app/target/backendRinha*.jar app.jar

EXPOSE 7000

ENTRYPOINT ["java", "-jar", "app.jar"]
