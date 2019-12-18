FROM node:12.13.1-alpine3.10

USER root

RUN apk add --update git git-lfs bash
