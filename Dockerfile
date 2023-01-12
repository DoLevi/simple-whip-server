FROM alpine:3.17

RUN apk add git npm

COPY . /simple-whip-server
WORKDIR /simple-whip-server
RUN npm run build

ARG JANUS_HOST
RUN sed -i "s/127.0.0.1/${JANUS_HOST}/g" src/config.js

ENTRYPOINT ["/usr/bin/npm", "start"]
