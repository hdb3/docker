FROM ubuntu:15.10
# FROM ubuntu:14.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN sed -i /etc/apt/sources.list -e 's/deb-src/# deb-src/g' && \
    cd && apt-get update && apt-get -qq install git python-dev libssl-dev libffi-dev wget && apt-get clean && apt-get -y autoclean && apt-get -y autoremove && \
    wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py && rm get-pip.py
RUN apt-get install -qq ubuntu-cloud-keyring && \
    echo "deb http://ubuntu-cloud.archive.canonical.com/ubuntu trusty-updates/liberty main" > /etc/apt/sources.list.d/cloudarchive-liberty.list && \
    apt-get update && apt-get install -qq python-openstackclient
