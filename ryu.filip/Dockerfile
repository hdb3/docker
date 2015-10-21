FROM hdb3/ryu
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD ryu.diff ./
ADD motd /etc/motd
ADD start.sh ./
RUN patch -b --verbose ryu/ryu/app/simple_switch_13.py < ryu.diff
