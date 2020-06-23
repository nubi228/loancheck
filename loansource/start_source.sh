#!/bin/bash

./mvnw clean package spring-boot:run -DskipTests=true -Pkafka
