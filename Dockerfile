# pull a base image which will gives all required tools and libraries
FROM eclipse-temurin:17-jdk-alpine

# create a folder where the app code will store
WORKDIR /app

# copy your source code from your HOST machine to container
COPY src/Main.java /app/Main.java

# compile the application code
RUN javac Main.java

# run the application
CMD ["java","Main"]
