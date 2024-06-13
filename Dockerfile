FROM centos:7

RUN yum install httpd -y

RUN yum install net-tools -y

RUN echo "welcome to this webpage" > /var/www/html/index.html

WORKDIR /var/www/html