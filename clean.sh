#!/bin/bash -
set -x

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/stop.sh
docker rm -f rtorrent-$USER

