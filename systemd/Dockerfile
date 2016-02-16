FROM centos:7
MAINTAINER "nic hart" <docker@hdb3.net>
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
EXPOSE 2222
ENV container docker
RUN useradd -d /home/centos -m centos && echo centos:centos | chpasswd && echo 'centos ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
RUN yum -y install epel-release
RUN yum -y install systemd openssh-server crudini less ; yum clean all
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
# RUN rm -f /lib/systemd/system/systemd-update-utmp-runlevel.service
RUN cd /lib/systemd/system/ ; rm -fr etc-host* dracut-* rescue* initrd* systemd-ask-password* bluetooth.target proc-sys*
RUN rm -rf /lib/systemd/system-generators/*
RUN sed -i "/Port 22/ i Port 2222" /etc/ssh/sshd_config ; systemctl enable sshd ; ln -s /lib/systemd/system/systemd-user-sessions.service /lib/systemd/system/multi-user.target.wants
# RUN crudini --set --verbose /etc/systemd/system.conf Manager LogLevel debug
# RUN crudini --set --verbose /etc/systemd/system.conf Manager LogTarget journal
