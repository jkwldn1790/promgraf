#!/bin/bash

docker run --rm -d -p 3001:3000 \
--name grafana \
-v /home/jakewalden/Development/promgraf/grafana.ini:/etc/grafana/grafana.ini \
-v grafana-storage:/var/lib/grafana \
grafana/grafana

docker run --rm -d -p 9090:9090 \
--name prometheus \
-v /home/jakewalden/Development/promgraf/prometheus.yml:/etc/prometheus/prometheus.yml \
prom/prometheus

docker run --rm -d -p 2368:2368 \
--name ghost \
ghost:latest