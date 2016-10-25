#Stop if running 
docker-compose stop

sh ./cleanup.sh

#Remove the existing image
docker rmi multichain_chain
docker-compose up -d
