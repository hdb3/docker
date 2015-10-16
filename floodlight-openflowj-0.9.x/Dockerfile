FROM hdb3/maven-ant
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","/root/run.sh"]
WORKDIR /root
ADD patch /root/
ADD run.sh /root/
ADD https://github.com/floodlight/floodlight/archive/v1.1.zip /root/
RUN . /etc/profile && \
    # needed to get docker's /bin/sh to pick up the PATH additions need for mvn to run.... && \
    apt-get -y install unzip git make python && \
    cd /root && \
    unzip v1.1.zip && rm v1.1.zip && \
    rm -f /root/floodlight-1.1/lib/openflowj-0.9.0-SNAPSHOT*jar && \
    git clone https://github.com/floodlight/loxigen.git -b java-0.9.x && \
    patch -p1 < /root/patch && \
    cd loxigen && make java && cd loxi_output/openflowj/ && mvn install && cp target/openflowj-0.9.1-SNAPSHOT*.jar /root/floodlight-1.1/lib && \
    cd /root/floodlight-1.1 && ant && \
    apt-get -y purge unzip git make python && apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove && rm -rf /root/.m2
