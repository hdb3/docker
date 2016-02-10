FROM hdb3/systemd-fedora
RUN dnf -y install httpd; dnf clean all; systemctl enable httpd.service
RUN mkdir -p /var/log/httpd
EXPOSE 80
CMD ["/usr/sbin/init"]
