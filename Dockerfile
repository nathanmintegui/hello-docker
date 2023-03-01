FROM maven:3.8.6-jdk-11-slim AS build
WORKDIR /app
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean install
EXPOSE 9320
