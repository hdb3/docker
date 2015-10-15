FROM hdb3/ant
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD build.sh /root/
RUN cd ; bash -evl build.sh
