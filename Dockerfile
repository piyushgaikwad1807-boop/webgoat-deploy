FROM webgoat/webgoat

CMD java -jar webgoat.jar --server.address=0.0.0.0 --server.port=$PORT
