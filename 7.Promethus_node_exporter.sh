!#/bin/bash

VERSION="1.8.2"

wget https://github.com/prometheus/node_exporter/releases/download/${VERSION}/node_exporter-${VERSION}.linux-amd64.tar.gz
tar -xzf node_exporter-${VERSION}.linux-amd64.tar.gz
mv node_exporter-${VERSION}.linux-amd64.tar.gz node_exporter
cd node_exporter
sudo cp node_exporter /usr/local/bin/

cat <<EOT > /etc/systemd/system/node_exporter.service

  [Unit]
  Description=Node Exporter

  [Service]
  User=nobody
  ExecStart=/usr/local/bin/node_exporter

  [Install]
  WantedBy=default.target
EOT

sudo systemctl daemon-reload
sudo systemctl start node_exporter
sudo systemctl enable node_exporter
