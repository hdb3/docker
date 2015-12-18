FROM centos:7
MAINTAINER Nic Hart <nic@hdb3.net>
ENV USER quagga
WORKDIR /root
RUN yum install -y epel-release && yum install -y git autoconf automake libtool gawk texinfo make sudo
#RUN yum install -y epel-release && yum -y update  && yum install -y git
RUN git clone git://git.savannah.nongnu.org/quagga.git && cd quagga && git checkout origin/stable/0.99.24 && ./bootstrap.sh && \
    ./configure && make install
RUN useradd -d /home/$USER -m $USER && echo $USER:$USER | chpasswd && echo "$USER ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER
ADD bgpd.conf /usr/local/etc/
