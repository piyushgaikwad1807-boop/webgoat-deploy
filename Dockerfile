FROM eclipse-temurin:17-jre

WORKDIR /app

ADD https://github.com/WebGoat/WebGoat/releases/download/v8.2.2/webgoat-8.2.2.jar webgoat.jar

EXPOSE 8080

CMD ["java", "-jar", "webgoat.jar", "--server.address=0.0.0.0", "--server.port=8080"]
