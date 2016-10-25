#Kill all containers
docker kill `docker ps -aq`

#Remove all exited containers
#docker rm $(docker ps --all -q -f status=exited)
docker rm `docker ps -aq`

#Cleanup dead volumes
docker rmi docker volume rm $(docker volume ls -qf dangling=true)
