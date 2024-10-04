# Use Tomcat as the base image
FROM tomcat:9.0

# Remove the default webapps to avoid conflict
RUN rm -rf /usr/local/tomcat/webapps/*

# Set the working directory (optional, for clarity)
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file to the Tomcat webapps directory
COPY target/java-servlet-app-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/

# Expose the port on which Tomcat runs
EXPOSE 8080

# No CMD needed as Tomcat starts automatically
