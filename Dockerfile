FROM centos:7

RUN yum install httpd -y

RUN yum install net-tools -y

COPY index.html /var/www/html/index.html

WORKDIR /var/www/html

RUN httpd

RUN find /var/www/html -type d -exec chmod 755 {} \;

RUN find /var/www/html -type f -exec chmod 644 {} \;

RUN chmod 644 /var/www/html/index.html

RUN httpd

EXPOSE 8030
