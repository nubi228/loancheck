#!/bin/bash

topic1="output"
topic2="approved"
topic3="declined"
zookeeper="localhost:2181"

docker run \
  --net=host \
  --rm confluentinc/cp-kafka:latest \
  kafka-topics --create --topic $topic1 --partitions 1 --replication-factor 1 --if-not-exists --zookeeper $zookeeper

docker run \
  --net=host \
  --rm confluentinc/cp-kafka:latest \
  kafka-topics --create --topic $topic2 --partitions 1 --replication-factor 1 --if-not-exists --zookeeper $zookeeper

docker run \
  --net=host \
  --rm confluentinc/cp-kafka:latest \
  kafka-topics --create --topic $topic3 --partitions 1 --replication-factor 1 --if-not-exists --zookeeper $zookeeper

