FROM ubuntu:xenial
USER root


# install
RUN apt-get update && \
    apt-get install -y --force-yes rtorrent supervisor && \
    rm -rf /var/lib/apt/lists/*

# add startup scripts and configs
ADD startup-rtorrent.sh .rtorrent.rc /root/

# configure supervisor
ADD supervisord.conf /etc/supervisor/conf.d/

EXPOSE 51100
EXPOSE 51101
VOLUME /downloads

CMD ["supervisord"]

