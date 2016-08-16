FROM ubuntu:xenial
USER root


# install
RUN apt-get update && \
    apt-get install \
      -y --allow-downgrades --allow-remove-essential --allow-change-held-packages \
      rtorrent && \
    rm -rf /var/lib/apt/lists/*

# add startup scripts and configs
ADD startup-rtorrent.sh .rtorrent.rc /root/

EXPOSE 51100
VOLUME /downloads

CMD ["rtorrent"]

