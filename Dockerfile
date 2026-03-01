FROM webgoat/webgoat

ENV SERVER_PORT=$PORT

CMD java -jar webgoat.jar --server.address=0.0.0.0 --server.port=$PORT
