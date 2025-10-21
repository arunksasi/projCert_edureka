# Base Image from
FROM  devopsedu/webapp
# Installing required packages to run application 
RUN apt-get update && \
 	apt-get install apache2 -y && \
 	apt-get install php -y  

# Copy  Application Files 
COPY ./website/  /var/www/html/
# Expose port 80  application runs on thos port 
EXPOSE  80 

# start apache2 in foreground 

CMD ["apache2ctl", "-D", "FOREGROUND"]


