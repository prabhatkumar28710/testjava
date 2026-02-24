# Use Maven image with JDK
FROM maven:3.9.6-eclipse-temurin-17

# Set working directory
WORKDIR /app

# Copy project files
COPY pom.xml .
COPY src ./src

# Build the project
RUN mvn clean package -DskipTests

# Run the jar file
CMD ["java", "-jar", "target/my-app-1.0-SNAPSHOT.jar"]