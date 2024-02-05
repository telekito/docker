FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

COPY spring-petclinic-main/.mvn/ .mvn
COPY spring-petclinic-main/mvnw spring-petclinic-main/pom.xml ./
RUN ./mvnw dependency:resolve

COPY spring-petclinic-main/src ./src

RUN ./mvnw package

EXPOSE 8080


CMD ["./mvnw", "spring-boot:run"]
