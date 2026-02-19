FROM tomcat:9.0-jdk11

# Clean default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into Tomcat as ROOT app
COPY target/*.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
