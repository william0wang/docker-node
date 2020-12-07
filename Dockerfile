FROM node:lts-alpine

USER root

RUN apk add --update git git-lfs bash ca-certificates openssl curl tzdata \
 && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
 && echo "Asia/Shanghai" > /etc/timezone

ENV SHELL /bin/bash
