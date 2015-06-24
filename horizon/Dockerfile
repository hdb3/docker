FROM hdb3/horizon-base
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD openstack-dashboard.conf /etc/apache2/sites-enabled/
RUN cd horizon && \
    cp openstack_dashboard/local/local_settings.py.example openstack_dashboard/local/local_settings.py && \
    sed -i openstack_dashboard/local/local_settings.py -e "/^#ALLOWED_HOSTS/s/^.*$/ALLOWED_HOSTS = ['*', ]/" && \
    sed -i openstack_dashboard/local/local_settings.py -e '/^OPENSTACK_HOST/s/127.0.0.1/10.30.65.210/' && \
    chown -R www-data:www-data /root/horizon && chmod a+X /root && \
    mkdir /var/run/wsgi && chown www-data:www-data /var/run/wsgi
