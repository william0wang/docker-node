FROM node:lts-alpine

USER root

RUN apk add --update git git-lfs bash rsync findutils ca-certificates openssl curl tzdata \
 && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone \
 && mkdir /cache

ENV SHELL /bin/bash

COPY cacher.sh /usr/local/
VOLUME /cache

ENTRYPOINT ["/usr/local/cacher.sh"]
