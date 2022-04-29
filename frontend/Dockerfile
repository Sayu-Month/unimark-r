FROM node:16.15.0-alpine

ARG WORKDIR
ENV HOME=/${WORKDIR}
WORKDIR ${HOME}

RUN apk update && npm install -g npm
