#!/bin/bash

topic="topic1"
zookeeper="localhost:32181"

docker run \
  --net=host \
  --rm confluentinc/cp-kafka:latest \
  kafka-topics --describe --topic $topic --zookeeper $zookeeper
