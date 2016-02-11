FROM centos:7
MAINTAINER "nic hart" <docker@hdb3.net>
ENV container docker
# RUN yum -y update; yum clean all
# RUN yum -y install httpd
RUN yum -y install epel-release
RUN yum -y install systemd crudini less ; yum clean all
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
#RUN rm -f /lib/systemd/system/systemd-update-utmp-runlevel.service
RUN cd /lib/systemd/system/ ; rm -fr etc-host* dracut-* rescue* initrd* systemd-ask-password* bluetooth.target proc-sys*
RUN rm -rf /lib/systemd/system-generators/*
RUN crudini --set --verbose /etc/systemd/system.conf Manager LogLevel debug
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
