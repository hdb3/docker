FROM ubuntu:14.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN sed -i /etc/apt/sources.list -e 's/deb-src/# deb-src/g' && \
    cd && apt update && apt-get -y install git python-dev libssl-dev libffi-dev wget && apt-get clean && apt-get -y autoclean && apt-get -y autoremove && \
    wget https://bootstrap.pypa.io/get-pip.py && python get-pip.py && rm get-pip.py
