FROM intellij
MAINTAINER Nic Hart <nic@hdb3.net>
#CMD idea.sh
CMD ["/bin/bash","-l"]
WORKDIR /root
#RUN apt-get update && apt-get dist-upgrade -y
#RUN apt-get -y clean && apt-get -y autoclean && apt-get -y autoremove
RUN git clone https://gerrit.onosproject.org/onos -b onos-1.1
RUN cat /etc/environment
#RUN grep -lr /usr/local/bin /etc
# RUN cd /root && . ./.profile
ENV PATH=$PATH:/usr/local/apache-maven-3.3.3/bin
RUN echo $PATH
RUN cd onos && mvn clean install
