#!/bin/bash

topic="declined"


bootstrap="localhost:9092"

echo consumer on $topic

docker run \
  --net=host \
  --rm \
  confluentinc/cp-kafka:latest \
  kafka-console-consumer --bootstrap-server $bootstrap --topic $topic --from-beginning
