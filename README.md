Docker container with rTorrent and ruTorrent (stable and latest from github)
============================================================================

Tags:

 - rtorrent

----------

Single unsupervised process inside the container, should be married with systemd typically.

- rtorrent

----------
Exposed:

 - Incoming connections port: 51000 + $EUID
 - Downloads volume: /downloads
 - rtorrent scratch files (.rtorrent/{watch|session} will be created automatically): /downloads
 - external rtorrent config (.rtorrent/.rtorrent.rc): /downloads
 - rtorrent uid and gid: USR_ID and GRP_ID env vars, default is 1000:1000

