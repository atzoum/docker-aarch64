FROM aarch64/debian:jessie
RUN set -xe \
    && apt-get update && apt-get install -y --no-install-recommends\
       make \
       git \
       ca-certificates \
       xz-utils \
       libltdl7 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

VOLUME /docker-build-workspace
COPY build.sh /build.sh
ENTRYPOINT ["/build.sh"]
CMD ["17.03.0-ce"]
