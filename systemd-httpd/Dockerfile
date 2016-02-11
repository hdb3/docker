FROM hdb3/systemd
RUN yum -y install httpd; yum clean all
RUN systemctl enable httpd.service ; \
    mkdir -p /var/log/httpd ; \
    mkdir -p /var/www/html
EXPOSE 80
CMD ["/usr/sbin/init"]
