FROM centos:7

RUN yum install httpd -y

RUN yum install net-tools -y

COPY index.html /var/www/html/index.html

WORKDIR /var/www/html

RUN find /var/www/html -type d -exec chmod 755 {} \;

RUN find /var/www/html -type f -exec chmod 644 {} \;

RUN chmod 644 /var/www/html/index.html

EXPOSE 8000

RUN httpd

