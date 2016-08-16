#!/bin/bash -
set -x

mkdir -p ~/rtorrent
mkdir -p ~/.sock

RTORRENT_PORT=$((50000+$EUID))
SCGI_PORT=$((40000+$EUID))

/usr/bin/docker run -t -a stdout -a stderr --name rtorrent-$USER \
  -p $SCGI_PORT:40000 \
  -p $RTORRENT_PORT:50000 \
  -p $RTORRENT_PORT:50000/udp \
  -v ~/rtorrent:/downloads \
  rtorrent

