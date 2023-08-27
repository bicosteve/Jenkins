#!/bin/bash 
echo "****************************"
echo "** Buildiing jar ******"
echo "****************************"

maven = "mvn -B -DskipTests clean package"

docker run --rm -v $PWD/java-app:/app -v /root/.m2/:/root/.m2/ -w /app maven:3-alpine "$maven"
