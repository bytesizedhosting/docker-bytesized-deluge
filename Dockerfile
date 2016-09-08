FROM bytesized/base
MAINTAINER maran@bytesized-hosting.com

ENV PYTHON_EGG_CACHE="/config/plugins/.python-eggs"

RUN apk add --no-cache p7zip unrar unzip
RUN apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/testing deluge
RUN apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/community py-service_identity

EXPOSE 8112 58846 58946 58946/udp

VOLUME /config /data

COPY static/ /
