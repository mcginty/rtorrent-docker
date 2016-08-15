#!/bin/bash
docker run -dt --name rtorrent-$USER \
  -p 51100:51100/udp \
  -p 51101:51101 \
  -v ~/rtorrent:/downloads \
  diameter/rtorrent-rutorrent:64

