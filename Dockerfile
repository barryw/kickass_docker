FROM openjdk:17-jdk-alpine3.12
LABEL maintainer="barrywalker@gmail.com"

ADD http://www.theweb.dk/KickAssembler/KickAssembler.zip /
RUN unzip /KickAssembler.zip && rm -f /KickAssembler.zip

VOLUME /workspace

ENTRYPOINT ["java", "-jar", "/KickAss.jar"]
