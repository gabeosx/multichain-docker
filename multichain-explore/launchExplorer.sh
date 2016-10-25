/usr/local/bin/multichaind -datadir=/opt/chains chain1@master:8080 -daemon
RPCPORT=$(grep -oe "^default-rpc-port = [0-9]*" /opt/chains/chain1/params.dat | cut -c 20- 2>&1)
echo "rpcport=$RPCPORT" >> /opt/chains/chain1/multichain.conf
cd /opt/multichain/explore/multichain-explorer/
python -m Mce.abe --config chain1.conf
