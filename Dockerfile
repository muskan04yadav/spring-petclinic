# Use an official Java runtime as the base image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file to the container
COPY target/spring-petclinic-*.jar app.jar

# Expose the application port
EXPOSE 8080

# Command to run the Spring Boot application
CMD ["java", "-jar", "app.jar"]