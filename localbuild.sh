#!/bin/bash
DOCKER_TAG=${DOCKER_TAG:-latest}
docker build -t elek/spark-base:$DOCKER_TAG spark-base
docker build -t elek/spark-history:$DOCKER_TAG spark-history
docker build -t elek/spark-master:$DOCKER_TAG spark-master
docker build -t elek/spark-slave:$DOCKER_TAG spark-slave
