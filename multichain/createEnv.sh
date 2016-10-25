### Chain 1 specific conf
#echo "rpcuser=$RPCUSER" > /opt/chains/chain1/multichain.conf
#echo "rpcpassword=$RPCPASSWORD" >> /opt/chains/chain1/multichain.conf

### Global conf
#echo "anyone-can-connect=$ANYONE_CAN_CONNECT" > /opt/chains/multichain.conf
#echo "anyone-can-send=$ANYONE_CAN_SEND" >> /opt/chains/multichain.conf
#echo "anyone-can-receive=$ANYONE_CAN_RECEIVE" >> /opt/chains/multichain.conf
#echo "anyone-can-create=$ANYONE_CAN_CREATE" >> /opt/chains/multichain.conf
#echo "anyone-can-issue=$ANYONE_CAN_ISSUE" >> /opt/chains/multichain.conf
#echo "anyone-can-mine=$ANYONE_CAN_MINE" >> /opt/chains/multichain.conf
#echo "anyone-can-activate=$ANYONE_CAN_ACTIVATE" >> /opt/chains/multichain.conf
#echo "anyone-can-admin=$ANYONE_CAN_ADMIN" >> /opt/chains/multichain.conf

/usr/local/bin/multichain-util create chain1 -datadir=/opt/chains -default-network-port=$PEER_PORT -default-rpc-port=$RPC_PORT \
	-anyone-can-connect=$ANYONE_CAN_CONNECT \
	-anyone-can-send=$ANYONE_CAN_SEND \
	-anyone-can-receive=$ANYONE_CAN_RECEIVE \
	-anyone-can-create=$ANYONE_CAN_CREATE \
	-anyone-can-issue=$ANYONE_CAN_ISSUE \
	-anyone-can-mine=$ANYONE_CAN_MINE \
	-anyone-can-activate=$ANYONE_CAN_ACTIVATE \
	-anyone-can-admin=$ANYONE_CAN_ADMIN

echo "rpcuser=$RPCUSER" > /opt/chains/chain1/multichain.conf
echo "rpcpassword=$RPCPASSWORD" >> /opt/chains/chain1/multichain.conf


sed -i "s/anyone-can-connect = false/anyone-can-connect = $ANYONE_CAN_CONNECT/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-send = false/anyone-can-send = $ANYONE_CAN_SEND/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-receive = false/anyone-can-receive = $ANYONE_CAN_RECEIVE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-create = false/anyone-can-create = $ANYONE_CAN_CREATE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-issue = false/anyone-can-issue = $ANYONE_CAN_ISSUE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-mine = false/anyone-can-mine = $ANYONE_CAN_MINE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-activate = false/anyone-can-activate = $ANYONE_CAN_ACTIVATE/g" /opt/chains/chain1/params.dat
sed -i "s/anyone-can-admin = false/anyone-can-admin = $ANYONE_CAN_ADMIN/g" /opt/chains/chain1/params.dat

/usr/local/bin/multichaind chain1 -datadir=/opt/chains start -port=$PEER_PORT -rpcport=$RPC_PORT
