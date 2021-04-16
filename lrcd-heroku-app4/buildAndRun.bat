@echo off
call mvn clean package
call docker build -t com.mycompany/lrcd-heroku-app4 .
call docker rm -f lrcd-heroku-app4
call docker run -d -p 9080:9080 -p 9443:9443 --name lrcd-heroku-app4 com.mycompany/lrcd-heroku-app4