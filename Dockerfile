FROM openjdk:14.0.2
WORKDIR /build
COPY . .
RUN java --version
RUN ./gradlew clean ktlintCheck
