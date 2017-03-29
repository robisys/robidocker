#
docker run --net test -dit --name host1 -P so0k/envtest sh

docker run --net test -dit --name host2 -P so0k/envtest sh

docker ps
