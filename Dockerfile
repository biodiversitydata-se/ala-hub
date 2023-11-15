FROM tomcat:9.0-jdk11-temurin

ENV TZ=Europe/Stockholm

RUN mkdir -p /data/ala-hub/config

COPY sbdi/data/config/charts.json /data/ala-hub/config/charts.json
COPY sbdi/data/config/grouped_facets_default.json /data/ala-hub/config/grouped_facets_default.json

COPY build/libs/ala-hub-*-plain.war $CATALINA_HOME/webapps/ROOT.war

ENV DOCKERIZE_VERSION v0.7.0

RUN apt-get update \
    && apt-get install -y wget \
    && wget -O - https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-linux-amd64-$DOCKERIZE_VERSION.tar.gz | tar xzf - -C /usr/local/bin \
    && apt-get autoremove -yqq --purge wget && rm -rf /var/lib/apt/lists/*
