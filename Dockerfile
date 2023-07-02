FROM ubuntu
WORKDIR /var/www/html
LABEL maintainer="NasirPatel"
RUN sudo apt update -y && sudo apt install apache2 -y && sudo apt install zip -y
RUN systemctl start apache2 && systemctl enable apache2
ADD https://www.free-css.com/assets/files/free-css-templates/download/page292/picstudio.zip /var/www/html/
RUN unzip picstudio.zip
RUN cp -rvf picstudio/*
CMD chkconfig apache2 on
EXPOSE 80 