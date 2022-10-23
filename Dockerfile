FROM openjdk:17.0.2-jdk
#docker pull openjdk:17.0.2-jdk
EXPOSE 8080

WORKDIR /app

#Version
ENV VERSION="0.0.1-SNAPSHOT"
ENV NAME="springboot3-rc-demo"

#Server
ENV server_port="8080"

#add jar file
ADD target/${NAME}-${VERSION}.jar /app/application.jar
#ENTRYPOINT ["java","-jar","/app/application.jar","--dockerconfig=true"]
CMD java -jar /app/application.jar --server.port=${server_port}