FROM centos:7
MAINTAINER Nic Hart <nic@hdb3.net>
WORKDIR /root
COPY ceph.repo /etc/yum.repos.d/
RUN yum install -y epel-release
RUN yum install openssh-clients sshpass ceph-deploy -y && \
    useradd -d /home/ceph -m ceph && \
    echo ceph:ceph | chpasswd
#RUN yum update -y && yum install ceph-deploy -y
COPY .ssh /home/ceph/.ssh/
RUN chown -R ceph:ceph /home/ceph/.ssh
USER ceph
WORKDIR /home/ceph
#RUN ssh-keygen -q -t rsa -f ~/.ssh/id_rsa
