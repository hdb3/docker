FROM ubuntu:14.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN sed -i /etc/apt/sources.list -e 's/deb-src/# deb-src/g' && \
    apt update && \
    apt-get -y install git python-dev libssl-dev libffi-dev wget python-django apache2 libapache2-mod-wsgi memcached python-memcache && \
    apt-get clean && \
    apt-get -y autoclean && \
    apt-get -y autoremove && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py && \
    cd && \
    git clone https://github.com/openstack/horizon.git && \
    cd horizon && \
    git checkout origin/stable/juno && \
    pip install oslo.i18n==1.7.0 # this is essential as oslo.i18n is fatal for the juno clients && \
    pip install .
