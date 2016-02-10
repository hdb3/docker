FROM hdb3/systemd
RUN yum -y install httpd; yum clean all; systemctl enable httpd.service
RUN mkdir -p /var/log/httpd
RUN mkdir -p /var/www/html
EXPOSE 80
CMD ["/usr/sbin/init"]
