#!/bin/bash
until docker network connect ${NET} ${CONTAINER}
do
  sleep 1
done
