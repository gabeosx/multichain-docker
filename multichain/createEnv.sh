### Create chain
/usr/local/bin/multichain-util create chain1 -datadir=/opt/chains

### Configure RPC
echo "rpcuser=$RPCUSER" > /opt/chains/chain1/multichain.conf
echo "rpcpassword=$RPCPASSWORD" >> /opt/chains/chain1/multichain.conf
echo "rpcallowip=$RPC_NETMASK" >> /opt/chains/chain1/multichain.conf
echo "rpcport=$RPC_PORT" >> /opt/chains/chain1/multichain.conf

### Configure params
sed -i "s/anyone-can-connect = false/anyone-can-connect = $ANYONE_CAN_CONNECT/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-send = false/anyone-can-send = $ANYONE_CAN_SEND/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-receive = false/anyone-can-receive = $ANYONE_CAN_RECEIVE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-create = false/anyone-can-create = $ANYONE_CAN_CREATE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-issue = false/anyone-can-issue = $ANYONE_CAN_ISSUE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-mine = false/anyone-can-mine = $ANYONE_CAN_MINE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-activate = false/anyone-can-activate = $ANYONE_CAN_ACTIVATE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-admin = false/anyone-can-admin = $ANYONE_CAN_ADMIN/g" /opt/chains/chain1/params.dat


### Start chain
/usr/local/bin/multichaind chain1 -datadir=/opt/chains start -port=$PEER_PORT -rpcport=$RPC_PORT
