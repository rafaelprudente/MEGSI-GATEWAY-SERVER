FROM --platform=linux/arm64 bellsoft/liberica-openjre-debian:21

WORKDIR /opt

EXPOSE 5080

COPY target/*.jar /opt/app.jar

ENTRYPOINT ["/bin/sh", "-c", "java -jar /opt/app.jar"]