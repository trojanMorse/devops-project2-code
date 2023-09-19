# Download base image ubuntu 22.04
FROM hshar/webapp

# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive

# Update Ubuntu Software repository
RUN apt update
RUN apt upgrade -y

RUN apt-get update && apt-get install apache2 -y

COPY . /var/www/html/

ENTRYPOINT apachectl -D FOREGROUND

# Expose Port for the Application 
EXPOSE 80
