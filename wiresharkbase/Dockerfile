FROM ubuntu
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN apt-get update && \
    apt-get -y install wget bison flex libqt4-dev libgtk-3-dev libpcap-dev zlib1g-dev libssl-dev && \
    apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove
