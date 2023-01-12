FROM alpine:3.17

RUN apk add git npm

COPY . /simple-whip-server
WORKDIR /simple-whip-server
RUN npm run build

ENTRYPOINT ["/usr/bin/npm", "start"]
