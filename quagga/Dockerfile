FROM centos:7
MAINTAINER Nic Hart <nic@hdb3.net>
WORKDIR /root
RUN yum install -y epel-release && yum install -y git autoconf automake libtool gawk texinfo make
#RUN yum install -y epel-release && yum -y update  && yum install -y git
RUN git clone git://git.savannah.nongnu.org/quagga.git && cd quagga && git checkout origin/stable/0.99.24 && ./bootstrap.sh && \
    ./configure && make 
