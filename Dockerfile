FROM openjdk:8-jre-alpine

COPY ./docker/* ./
COPY target/scala-2.12/akka-boot-starter-assembly-0.1.jar akka-boot-starter.jar

EXPOSE 80
EXPOSE 81
EXPOSE 443
EXPOSE 444

CMD java \
    -agentpath:/libsentry_agent_linux-x86_64.so \
    -jar akka-boot-starter.jar $environment.conf