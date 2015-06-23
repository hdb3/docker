FROM ubuntu:14.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN cd ; apt-get install git python-dev python-virtualenv libssl-dev libffi-dev ; \
    git clone https://github.com/openstack/horizon.git && cd horizon
