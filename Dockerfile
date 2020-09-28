FROM openjdk:14-alpine
WORKDIR /build
COPY . .
RUN ./gradlew clean ktlintCheck
