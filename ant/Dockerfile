FROM hdb3/java8
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD http://mirror.vorboss.net/apache/ant/binaries/apache-ant-1.9.6-bin.tar.bz2 /root/
RUN tar -xjf /root/apache-ant-1.9.6-bin.tar.bz2 -C /usr/local/ && \
    rm /root/apache-ant-1.9.6-bin.tar.bz2 && \
    echo 'PATH="/usr/local/apache-ant-1.9.6/bin:$PATH"' >> /etc/profile
