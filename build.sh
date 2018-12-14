#!/bin/sh
version="2.1.2"
docker build --build-arg DRONE_TAG=v${version} -t pharos-cluster .
id=`docker create pharos-cluster`
docker cp $id:/pharos-cluster/pharos-cluster-linux-amd64-${version}+oss ./pharos-cluster
docker rm -f $id
