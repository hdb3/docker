FROM ubuntu:15.10
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD https://acpica.org/sites/acpica/files/acpica-unix-20160318.tar.gz /root
ADD build.sh /root
ADD README /root
RUN apt-get update && apt -y install git make gcc nasm python g++ uuid-dev m4 flex bison
RUN tar zxf acpica-unix-20160318.tar.gz
RUN cd acpica-unix-20160318 && make -j 8 && make install
RUN cd ; git clone https://github.com/tianocore/edk2.git -b UDK2015
RUN cd edk2 && make -C BaseTools
RUN echo "cd edk2 && source edksetup.sh && cd OvmfPkg && cp ~/build.sh . && ./build.sh -a X64 -n 8" | bash -ve
RUN tar cfv OvmfX64.tar edk2/Build/OvmfX64/DEBUG_GCC49/FV/OVMF*fd
