FROM aarch64/alpine
RUN apk update &&\
    apk upgrade &&\
    apk add ca-certificates &&\
    rm -rf /var/cache/apk/*
ADD https://github.com/containous/traefik/releases/download/v1.2.0/traefik_linux-arm64 /traefik
RUN chmod +x /traefik
ENTRYPOINT ["/traefik"]
