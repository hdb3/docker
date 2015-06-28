FROM hdb3/onosbuild:1.1
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD onosbuild.ssh.tgz /root/
ADD sdn/id_rsa.pub /root/authorized_keys
ADD package.sh /root/
RUN cd ; \
    bash package.sh
