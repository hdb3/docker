FROM ubuntu:14.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD diff1 /root/
ADD build.sh /root/
# RUN echo "build.sh contains: " ; cat build.sh
RUN cd ; bash -ev build.sh
