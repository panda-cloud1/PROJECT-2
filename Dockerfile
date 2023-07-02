FROM ubuntu
WORKDIR /var/www/html
LABEL maintainer="NasirPatel"
RUN apt update -y
RUN apt install apache2 -y 
RUN apt install zip -y
RUN apt install unzip -y
RUN systemctl start apache2
RUN systemctl enable apache2
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/picstudio.zip /var/www/html/
RUN unzip picstudio.zip
RUN cp -rvf picstudio/*
CMD chkconfig apache2 on
EXPOSE 80 