FROM tomcat:9.0-jdk17-temurin

ENV TZ=Europe/Stockholm

RUN mkdir -p /data/ala-hub/config

COPY sbdi/data/config/charts.json /data/ala-hub/config/charts.json
COPY sbdi/data/config/grouped_facets_default.json /data/ala-hub/config/grouped_facets_default.json

COPY build/libs/ala-hub-*-plain.war $CATALINA_HOME/webapps/ROOT.war
