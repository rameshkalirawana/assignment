#Download base image ubuntu 16.04
FROM ubuntu:16.04
MAINTAINER Ramesh Chand
ARG web=test
RUN apt-get update \
    && apt-get install -y nginx
# Append "daemon off;" to the beginning of the configuration
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
RUN rm -v /etc/nginx/sites-available/default
ADD default /etc/nginx/sites-available/

# Expose ports


# Set the default command to execute
# when creating a new container
CMD service nginx start
