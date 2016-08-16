#!/bin/bash -
set -x

mkdir -p ~/rtorrent
mkdir -p ~/.sock

PORT=$((50000+$EUID))

/usr/bin/docker run -t -a stdout -a stderr --name rtorrent-$USER \
  -p $PORT:51100 \
  -v ~/.socker:/root/sock \
  -v ~/rtorrent:/downloads \
  rtorrent

