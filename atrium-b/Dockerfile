FROM hdb3/maven
MAINTAINER Nic Hart <nic@hdb3.net>
WORKDIR /root
ADD https://github.com/OpenNetworkingFoundation/ATRIUM/tarball/master /root/
RUN tar zxf master && rm master && ls
RUN mkdir ~/.m2 && wget -q -O - https://raw.githubusercontent.com/opendaylight/odlparent/master/settings.xml > ~/.m2/settings.xml
RUN . /etc/profile && cd openflowsdn-atrium-a0b21e5 && mvn clean install -DskipTests=true
