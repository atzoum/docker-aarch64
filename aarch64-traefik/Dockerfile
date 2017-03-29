FROM aarch64/alpine
ARG TRAEFIK_VERSION=1.2.1
ENV VERSION=$TRAEFIK_VERSION
RUN apk update &&\
    apk upgrade &&\
    apk add ca-certificates &&\
    rm -rf /var/cache/apk/*
ADD https://github.com/containous/traefik/releases/download/v${VERSION}/traefik_linux-arm64 /traefik
RUN chmod +x /traefik
ENTRYPOINT ["/traefik"]
