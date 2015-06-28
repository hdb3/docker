FROM ubuntu:14.04
MAINTAINER Nic Hart <n.p.hart@lancs.ac.uk>

RUN apt-get update && apt-get install -y git && \
    git clone git://github.com/mininet/mininet -b 2.2.1 && \
    mininet/util/install.sh -nv 

EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
