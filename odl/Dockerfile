FROM intellij7
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
#RUN apt-get update && apt-get dist-upgrade -y
#RUN apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove
RUN git clone https://git.opendaylight.org/gerrit/p/controller.git -b stable/helium
ENV PATH=$PATH:/usr/local/apache-maven-3.3.3/bin
RUN cd controller && mvn clean install
