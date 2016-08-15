#!/bin/bash

mkdir -p ~/rtorrent
mkdir -p ~/.sock

docker run -dt --name rtorrent-$USER \
  -p 51100:51100 \
  -p 51101:51101 \
  -v ~/.socker:/root/sock \
  -v ~/rtorrent:/downloads \
  rtorrent

