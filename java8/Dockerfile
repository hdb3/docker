FROM ubuntu:14.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
RUN cd && \
    apt-get update && apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:webupd8team/java && \
    apt-get update && apt-get dist-upgrade -y && \
    apt-get install -y git wget && \
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
    apt-get -y install oracle-java8-installer && \
    apt-get -y install oracle-java8-set-default && \
    wget http://mirror.ox.ac.uk/sites/rsync.apache.org/maven/maven-3/3.3.3/binaries/apache-maven-3.3.3-bin.tar.gz && \
    wget http://www.eu.apache.org/dist/karaf/3.0.3/apache-karaf-3.0.3.tar.gz && \
    tar zxf apache-maven-3.3.3-bin.tar.gz  -C /usr/local && \
    tar zxf apache-karaf-3.0.3.tar.gz && \
    echo 'PATH="/usr/local/apache-maven-3.3.3/bin:$PATH"' >> ~/.profile && \
    echo 'export KARAF_ROOT=~/apache-karaf-3.0.3' >> ~/.profile && \
    echo 'PATH="$KARAF_ROOT/bin:$PATH"' >> ~/.profile
