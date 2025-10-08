FROM openjdk:17
COPY target/*.jar healthcare.jar
ENTRYPOINT ["java", "-jar", "/healthcare.jar"]
