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

### Setup networking
EXPOSE 2750

### Install explorer

RUN mkdir -p /opt/multichain/explore

WORKDIR /opt/multichain/explore

RUN apt-get install git -y

RUN git clone https://github.com/MultiChain/multichain-explorer.git

WORKDIR /opt/multichain/explore/multichain-explorer

RUN apt-get install sqlite3 libsqlite3-dev -y
RUN apt-get install python-dev -y
RUN apt-get install python-pip -y
RUN pip install --upgrade pip
RUN pip install pycrypto

RUN python setup.py install

RUN cp chain1.example.conf chain1.conf
RUN sed -i "s/host localhost/host 0.0.0.0/g" /opt/multichain/explore/multichain-explorer/chain1.conf
RUN sed -i "s/\~\/\.multichain/\/opt\/chains/g" /opt/multichain/explore/multichain-explorer/chain1.conf

COPY ./launchExplorer.sh /opt/multichain/explore

ENTRYPOINT ["/bin/sh", "/opt/multichain/explore/launchExplorer.sh"]
