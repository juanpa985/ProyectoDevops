FROM centos:7

RUN yum install httpd -y

RUN yum install net-tools -y

RUN echo "welcome to this webpage" > /var/www/html/index.html

EXPOSE 8000

WORKDIR /var/www/html




