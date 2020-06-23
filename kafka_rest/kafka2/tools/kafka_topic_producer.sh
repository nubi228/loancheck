#!/bin/bash

topic="topic1"
broker="localhost:29092"
json="topic1.json"

#docker cp $json kafka2_broker_1:latest:/


x=$(docker ps | grep kafka2_broker_1 | awk '{print $1}')

echo $x


docker cp $json $x:/
exit 1


docker run \
  --net=host \
  --rm \
  confluentinc/cp-kafka:latest \
  bash -c "kafka-console-producer --broker-list $broker --topic $topic < $json"



#  bash -c "seq 42 | kafka-console-producer --request-required-acks 1 --broker-list localhost:29092 --topic topic1 && echo 'Produced 42 messages.'"

#kafka-console-producer --broker-list localhost:29092 --topic topic1 < topic1.json