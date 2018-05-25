FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/HelloWorld-0.0.1-SNAPSHOT.jar HelloWorld-app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /HelloWorld-app.jar" ]