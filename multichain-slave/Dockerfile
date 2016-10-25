### Create base

FROM ubuntu:16.04
RUN mkdir -p /opt/multichain
RUN apt-get update
RUN apt-get install wget -y
WORKDIR /opt/multichain

### Download & install software
RUN wget http://www.multichain.com/download/multichain-1.0-alpha-24.tar.gz
RUN tar -xvzf multichain-1.0-alpha-24.tar.gz
WORKDIR /opt/multichain/multichain-1.0-alpha-24
RUN mv multichaind multichain-cli multichain-util /usr/local/bin
RUN mkdir -p /opt/chains

ENTRYPOINT [ "/usr/local/bin/multichaind", "chain1@master:8080", "-datadir=/opt/chains" ]
