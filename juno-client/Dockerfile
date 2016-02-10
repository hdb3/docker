FROM ubuntu:14.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN sed -i /etc/apt/sources.list -e 's/deb-src/# deb-src/g' && \
    echo "deb http://ubuntu-cloud.archive.canonical.com/ubuntu trusty-updates/juno main" > /etc/apt/sources.list.d/cloudarchive-juno.list && apt-get update &&\
    apt-get install -qq ubuntu-cloud-keyring software-properties-common && \
    add-apt-repository ppa:fkrull/deadsnakes-python2.7 && \
    apt-get update && apt-get upgrade && \
    apt-get -qq install git python-dev python-pip libssl-dev libffi-dev wget python-netifaces python-openstackclient python-neutronclient && apt-get clean && apt-get -y autoclean && apt-get -y autoremove && \
    pip install py2-ipaddress
    # wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py && rm get-pip.py && pip install py2-ipaddress
#RUN pip install six --upgrade && rm /usr/lib/python2.7/dist-packages/six.py /usr/lib/python2.7/dist-packages/six.pyc /usr/lib/python2.7/dist-packages/six-1.5.2.egg-info
#RUN rm -v /usr/lib/python2.7/dist-packages/six.py /usr/lib/python2.7/dist-packages/six.pyc /usr/lib/python2.7/dist-packages/six-*egg-info
#RUN pip install six --upgrade
