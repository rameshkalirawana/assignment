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
RUN mkdir -p /var/www/html/dev
RUN mkdir -p /var/www/html/prod
ADD dev/index.html /var/www/html/dev
ADD prod/index.html /var/www/html/prod
ADD index.html /var/www/html

environment:
   - web=dev

command: /bin/bash -c "envsubst < /etc/nginx/sites-available/default > /etc/nginx/conf.d/default && exec nginx -g 'daemon off;'"

# Expose ports
EXPOSE 80

# Set the default command to execute
# when creating a new container
CMD service nginx start
