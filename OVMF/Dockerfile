FROM ubuntu:15.10
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD https://acpica.org/sites/acpica/files/acpica-unix-20160318.tar.gz /root
RUN apt-get update && apt -y install git make gcc nasm python g++ uuid-dev m4 flex bison
RUN tar zxf acpica-unix-20160318.tar.gz
RUN cd acpica-unix-20160318 && make -j 8 && make install
RUN cd ; git clone https://github.com/tianocore/edk2.git
RUN cd edk2 && make -C BaseTools
RUN cd edk2/OvmfPkg/ && ./build.sh -a X64 -n 8
