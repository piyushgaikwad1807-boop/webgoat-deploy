FROM openjdk:17-jdk-slim

WORKDIR /app

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/WebGoat/WebGoat/releases/download/v8.2.2/webgoat-8.2.2.jar -O webgoat.jar

EXPOSE 8080

CMD ["java", "-jar", "webgoat.jar", "--server.address=0.0.0.0", "--server.port=8080"]
