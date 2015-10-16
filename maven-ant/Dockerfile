FROM hdb3/java8
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD http://archive.apache.org/dist/maven/maven-3/3.3.1/binaries/apache-maven-3.3.1-bin.tar.gz /root/
ADD http://mirror.vorboss.net/apache/ant/binaries/apache-ant-1.9.6-bin.tar.bz2 /root/
RUN tar zxf /root/apache-maven-3.3.1-bin.tar.gz -C /usr/local/ && rm -f /root/apache-maven-3.3.1-bin.tar.gz && echo 'PATH="/usr/local/apache-maven-3.3.1/bin:$PATH"' >> /etc/profile
RUN tar xjf /root/apache-ant-1.9.6-bin.tar.bz2 -C /usr/local/ && rm /root/apache-ant-1.9.6-bin.tar.bz2 && echo 'PATH="/usr/local/apache-ant-1.9.6/bin:$PATH"' >> /etc/profile
