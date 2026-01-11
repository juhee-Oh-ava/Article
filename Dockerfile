FROM amazoncorretto:17-alpine
ARG port
EXPOSE ${port}
COPY ./build/libs/demo-0.0.1-SNAPSHOT.jar /usr/local/demo-0.0.1-SNAPSHOT.jar
RUN chmod +x /usr/local/demo-0.0.1-SNAPSHOT.jar
ENV demo 'Hello, Docker App !'
WORKDIR /usr/local
ENTRYPOINT ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]

