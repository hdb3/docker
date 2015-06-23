FROM ubuntu:15.04
MAINTAINER Nic Hart <nic@hdb3.net>
CMD ["/bin/bash","-l"]
WORKDIR /root
ADD https://www.haskell.org/ghc/dist/7.10.1/ghc-7.10.1-x86_64-unknown-linux-deb7.tar.xz /root/
ADD https://www.haskell.org/cabal/release/cabal-install-1.22.6.0/cabal-install-1.22.6.0.tar.gz /root/
RUN cd && apt update && apt -y install xz-utils gcc libgmp-dev make wget && \
    tar zxf cabal-install-1.22.6.0.tar.gz && \
    tar xJf ghc-7.10.1-x86_64-unknown-linux-deb7.tar.xz && \
    rm -f cabal-install-1.22.6.0.tar.gz ghc-7.10.1-x86_64-unknown-linux-deb7.tar.xz && \
    cd ghc-7.10.1 && ./configure && make install && \
    cd ~/cabal-install-1.22.6.0 && ./bootstrap.sh
