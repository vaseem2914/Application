FROM tomcat/tomcat01
# Dummy text to test
COPY target/onlinebookstore.war /usr/local/tomcat/webapps/onlinebookstore.war
