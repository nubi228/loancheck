#!/bin/bash

curl -X POST -H "Content-Type: application/vnd.kafka.json.v2+json" \
      -H "Accept: application/vnd.kafka.v2+json" \
      --data '{"records":[{"value":{"id":"eks"}}]}' "http://localhost:8085/topics/topic1"