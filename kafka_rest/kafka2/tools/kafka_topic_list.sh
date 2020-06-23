#!/bin/bash

zookeeper="localhost:2181"

docker run \
  --net=host \
  --rm \
  confluentinc/cp-kafka:latest \
  kafka-topics --zookeeper $zookeeper --list
