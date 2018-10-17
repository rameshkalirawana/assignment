# Pull base image
From tomcat:8.5-alpine

# Maintainer
MAINTAINER ramesh

RUN apk add --update curl && \
rm -rf /var/cache/apk/*

# Copy to images tomcat path
ADD sample.war /usr/local/tomcat/webapps/

