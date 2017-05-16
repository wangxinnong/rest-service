FROM jetty
COPY build/libs/rest-service.war /var/lib/jetty/webapps/ROOT.war
COPY keycloak.json /keycloak_config/keycloak.json
COPY platform.jks /platform.jks
CMD ["java","-Djavax.net.ssl.trustStore=/platform.jks", "-Djavax.net.ssl.trustStorePassword=welcome", "-jar","/usr/local/jetty/start.jar"]
