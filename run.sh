#!/bin/bash
set -x

mkdir -p ~/rtorrent
mkdir -p ~/.sock

PORT=$((50000+$EUID))

docker run -dt --name rtorrent-$USER \
  -p $PORT:51100 \
  -v ~/.socker:/root/sock \
  -v ~/rtorrent:/downloads \
  rtorrent

