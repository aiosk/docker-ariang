FROM ghcr.io/linuxserver/baseimage-alpine:3.14 as builder

ARG ARIANG_VER=1.2.3

RUN apk add --no-cache curl unzip \
    && wget -P /tmp https://github.com/mayswind/AriaNg/releases/download/${ARIANG_VER}/AriaNg-${ARIANG_VER}-AllInOne.zip \
    && unzip /tmp/AriaNg-${ARIANG_VER}-AllInOne.zip -d /tmp

FROM ghcr.io/linuxserver/baseimage-alpine:3.14

COPY root/ /
COPY --from=builder /tmp/index.html /app/index.html

RUN apk add --no-cache darkhttpd
EXPOSE 80