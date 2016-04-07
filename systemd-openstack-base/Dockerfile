FROM hdb3/systemd-sshd
# EXPOSE 2222
# CMD ["/usr/sbin/init"]
RUN yum -y -q install yum-plugin-priorities && yum -y -q install centos-release-openstack-liberty && \
yum -y -q upgrade && yum -y -q install patch crudini mod_wsgi python-openstackclient rabbitmq mariadb MySQL-python ntp openstack-nova-api openstack-nova-cert openstack-nova-conductor openstack-nova-console openstack-nova-novncproxy openstack-nova-scheduler python-novaclient wget openstack-glance python-glance python-glanceclient openstack-keystone httpd memcached python-memcached rabbitmq-server mariadb-server openstack-neutron openstack-neutron-ml2 python-neutronclient openstack-dashboard openstack-cinder python-cinderclient python-oslo-db openstack-nova-compute sysfsutils openstack-neutron openstack-neutron-ml2 openstack-neutron-openvswitch && \
yum clean all
