FROM node:alpine
LABEL maintainer="timo.traulsen@gmail.com"

RUN apk update && apk upgrade
RUN apk add --no-cache make gcc g++ python bash automake autoconf nasm libtool file libpng-dev
RUN yarn global add gatsby

WORKDIR /app

ADD package.json .

RUN yarn install
