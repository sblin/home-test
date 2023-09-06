FROM openjdk:17-jdk-slim
COPY target/spring-petclinic-{{VERSION}}.jar /usr/local
WORKDIR /usr/local
CMD ["java", "-jar", "spring-petclinic-{{VERSION}}.jar"]