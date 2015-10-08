FROM hdb3/onosbuild:1.1
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD onosbuild.ssh.tgz /root/
ADD sdn/id_rsa.pub /root/.ssh/authorized_keys
ADD package.sh /root/
COPY ssh_config /root/.ssh/config
#RUN /bin/bash package.sh
RUN cat ~/onos/tools/dev/bash_profile >> ~/.profile
ADD simple /root/onos/tools/test/cells/
# RUN ./package.sh
