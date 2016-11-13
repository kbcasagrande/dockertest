# Version: 0.0.1
FROM ubuntu:16.04
MAINTAINER Kenny Casagrande kbcasagrande@gmail.com
RUN apt-get update && apt-get install -y nginx && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
RUN echo "Hi, I'm a container! Testing Docker Automated Build" > /var/www/html/index.html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
