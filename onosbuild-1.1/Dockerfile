FROM hdb3/karaf
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD diff2 /root/
ADD build.sh /root/
RUN cd ; \
    apt-get -y install curl && \
    bash build.sh
