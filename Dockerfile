FROM node:alpine
LABEL maintainer="timo.traulsen@gmail.com"

USER root

RUN apk update && apk upgrade
RUN apk add --no-cache make gcc g++ python bash automake autoconf nasm libtool file libpng-dev

WORKDIR /app

ADD package.json .

RUN yarn install

USER nobody

