#! /bin/bash

cd spring-petclinic
# mvn clean package
mvn -Dmaven.repo.local=$(pwd)/cache -f $(pwd)/source/pom.xml clean install
find source/target -name *.jar -exec mv "{}" target/spring-petclinic.jar \;
cp  source/Dockerfile target/Dockerfile