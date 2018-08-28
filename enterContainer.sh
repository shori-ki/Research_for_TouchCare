# variable
theContainer="yuki-ki"

containerID=$(docker ps -aq --filter name=$theContainer)

echo " - Start $theContainer... "
#docker start $containerID
docker-compose up -d

echo " - Enter $theContainer container... "
docker exec -it $containerID bash