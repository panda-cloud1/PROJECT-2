FROM ubuntu
WORKDIR /var/www/html
LABEL maintainer="NasirPatel"
RUN apt update -y
RUN apt install apache2 -y 
RUN apt install zip -y
RUN apt install unzip -y
CMD ["apache2ctl", "-D", "FOREGROUND"]
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/picstudio.zip /var/www/html/
RUN unzip picstudio.zip
RUN cp -rvf picstudio/*
EXPOSE 80 