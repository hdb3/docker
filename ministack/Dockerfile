FROM hdb3/liberty-client
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN git clone https://github.com/hdb3/ministack.git -b stable && mkdir -p ~/.ssh && echo 'IdentityFile ~/ministack/openstack_rsa' >> ~/.ssh/config && chmod og-rw ~/ministack/openstack_rsa && echo 'StrictHostKeyChecking no' >> ~/.ssh/config
RUN git clone https://github.com/hdb3/remote.git -b stable
