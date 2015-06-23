FROM hdb3/karaf
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD diff1 /root/
ADD build.sh /root/
RUN cd ; bash -ev build.sh
