#!/bin/bash
wget https://github.com/prometheus/prometheus/releases/download/v2.53.2/prometheus-2.53.2.linux-amd64.tar.gz
tar -xzf prometheus-2.53.2.linux-amd64.tar.gz
mv prometheus-2.53.2.linux-amd64.tar.gz prometheus
cd prometheus
./prometheus
