# Start using base image containing Java runtime
FROM adoptopenjdk/openjdk8

# Make port 8080 available to the world outside the container
EXPOSE 8080

ADD target/spring-boot-docker-maven.jar spring-boot-docker-maven.jar

# Run the Jar 
ENTRYPOINT ["java", "-jar", "/spring-boot-docker-maven.jar"]

