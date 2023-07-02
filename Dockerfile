# Use the Ubuntu base image
FROM ubuntu:latest

# Install Apache2
RUN apt-get update && \
    apt-get install -y apache2

# Download and extract zip file
RUN apt-get install -y wget unzip && \
    cd /var/www/html && \
    wget https://www.free-css.com/assets/files/free-css-templates/download/page292/picstudio.zip && \
    unzip picstudio.zip -d /var/www/html

# Expose port 80 for Apache2
EXPOSE 80 22

# Start Apache2 on container startup
CMD ["apache2ctl", "-D", "FOREGROUND"]