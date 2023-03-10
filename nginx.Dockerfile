# Pull base image
FROM debian:latest

# Dockerfile Maintainer
MAINTAINER Jan Wagner "waja@cyconet.org"

# Install nginx and adjust nginx config to stay in foreground
RUN apt-get update && apt-get install --no-install-recommends -y nginx;

COPY nginx.conf /etc/nginx/nginx.conf

# Expose HTTP
EXPOSE 8080

# Start nginx
CMD ["/usr/sbin/nginx"]
