FROM centos:latest
MAINTAINER Nic Hart <nic@hdb3.net>
WORKDIR /root
COPY ceph.repo /etc/yum.repos.d/
RUN yum install -y epel-release
RUN yum install openssh-clients sshpass ceph-deploy redhat-lsb-core less iputils sudo -y
RUN useradd -d /home/centos -m centos && \
    echo centos:centos | chpasswd && \
    echo 'centos ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
USER centos
#RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa && echo "StrictHostKeyChecking no" >> ~/.ssh/config && chmod og-rwx ~/.ssh/config
WORKDIR /home/centos
COPY openstack_rsa* do_it ceph-deploy.sh ceph-test.sh selective-format.sh ./
COPY .ssh/* ./.ssh/
USER root
RUN chmod og-rwx /home/centos/.ssh/*
RUN chown centos:centos -R /home/centos/
USER centos
