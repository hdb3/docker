FROM hdb3/java8
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD build.sh /root/
RUN cd ; bash -ev build.sh
