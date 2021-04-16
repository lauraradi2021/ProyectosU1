#!/bin/sh
mvn clean package && docker build -t com.mycompany/lrcd-heroku-app4 .
docker rm -f lrcd-heroku-app4 || true && docker run -d -p 9080:9080 -p 9443:9443 --name lrcd-heroku-app4 com.mycompany/lrcd-heroku-app4