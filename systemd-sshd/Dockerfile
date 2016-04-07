FROM hdb3/systemd
EXPOSE 2222
RUN yum -y install openssh-clients openssh-server less sudo iproute ; yum clean all
RUN sed -i "/Port 22/ i Port 2222" /etc/ssh/sshd_config ; systemctl enable sshd
RUN useradd -d /home/centos -m centos && echo centos:centos | chpasswd && echo 'centos ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
CMD ["/usr/sbin/init"]
