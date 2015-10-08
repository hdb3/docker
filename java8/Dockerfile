FROM ubuntu:14.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN cd && \
    apt-get update && apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections && \
    apt-get -y install oracle-java8-installer && \
    apt-get -y install oracle-java8-set-default && \
    apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove
