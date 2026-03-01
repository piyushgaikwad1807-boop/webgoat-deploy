FROM openjdk:17-jdk-slim

WORKDIR /app

RUN apt-get update && apt-get install -y wget

RUN wget https://github.com/WebGoat/WebGoat/releases/latest/download/webgoat-server.jar

CMD ["sh", "-c", "java -jar webgoat-server.jar --server.port=$PORT"]
