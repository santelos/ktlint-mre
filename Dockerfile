# Use this command to build the image
# docker build -t ktlint-mre .
# It should exit with the ktlintMainSourceSetCheck task failure
FROM openjdk:14-alpine
WORKDIR /build
COPY . .
RUN ./gradlew build
