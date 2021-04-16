#!/bin/sh
mvn clean package && docker build -t com.mycompany/respuestas .
docker rm -f respuestas || true && docker run -d -p 9080:9080 -p 9443:9443 --name respuestas com.mycompany/respuestas