FROM tomcat:9.0-jdk11

# Remove default apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy our WAR file
COPY target/myapp-1.0.war /usr/local/tomcat/webapps/ROOT.war

# Expose port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
