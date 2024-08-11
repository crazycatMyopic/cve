FROM eclipse-temurin:17.0.7_7-jdk

FROM maven:3.9.8-eclipse-temurin-22-alpine AS base
WORKDIR /usr/cve
COPY pom.xml pom.xml
COPY ./m1 ./m1
COPY ./m2 ./m2

RUN mvn clean compile

FROM base AS test
RUN ["mvn","test"]

FROM base AS build
RUN ["mvn","install","-DskipTests"]

FROM build AS run
CMD ["java","-jar","target/cve-large.jar"]

