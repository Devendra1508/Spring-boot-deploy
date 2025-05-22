# Step 1: Use the base image with Java 17
FROM eclipse-temurin:17-jdk-alpine

# Step 2: Install curl (if needed for testing or dependencies)
RUN apk add --no-cache curl

# Step 3: Set the working directory inside the container
WORKDIR /app

# Step 4: Copy the JAR file into the container at the specified location
ADD target/springboot-aws-deploy-service.jar springboot-aws-deploy-service.jar

# Step 5: Expose the port 9091 that the app will run on
EXPOSE 9091

# Step 6: Specify the entry point to run the application
ENTRYPOINT ["java", "-jar", "/app/springboot-aws-deploy-service.jar", "--server.port=9091"]

