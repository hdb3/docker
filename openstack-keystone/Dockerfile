FROM hdb3/openstack-base
MAINTAINER Nic Hart <nic@hdb3.net>
#CMD ["/bin/bash","-l"]
ADD http://tarballs.openstack.org/keystone/keystone-stable-kilo.tar.gz /root/keystone/
RUN \
   cd /root/keystone/ ; \
   tar xzf keystone-stable-kilo.tar.gz --strip-components=1 && \
   pip install --upgrade -r requirements.txt && \
   python setup.py install && \
   cd && \
   rm -rf keystone-stable-kilo.tar.gz /root/keystone/
ENTRYPOINT ["/bin/bash","-l"]
WORKDIR /root
