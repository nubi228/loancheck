#!/bin/bash

docker run \
  --net=host \
  --rm \
  confluentinc/cp-kafka:latest \
  kafka-topics --zookeeper localhost:32181 --alter --topic topic1 --config retention.ms=72000000
