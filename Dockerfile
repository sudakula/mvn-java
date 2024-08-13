# Use a lightweight OpenJDK image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file into the Docker image
COPY target/mvn-java-1.0-SNAPSHOT.jar app.jar

# Specify the command to run the JAR
ENTRYPOINT ["java", "-jar", "app.jar"]
