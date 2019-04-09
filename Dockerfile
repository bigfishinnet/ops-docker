# set the base image
FROM ubuntu:latest

RUN apt-get clean
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install default-jre -y
COPY index.html /var/www/html/
COPY forestbridge.jpg /var/www/html/

#Expose port 80
#EXPOSE 80

CMD /usr/sbin/apache2ctl -D FOREGROUND