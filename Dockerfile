FROM node:8-alpine

RUN apk add --no-cache make g++ python2 \
    && mkdir /node \
    && npm i --prefix /node screeps

WORKDIR /screeps

ENV SCREEPS "/node/node_modules/.bin/screeps"

COPY entry.sh /entry.sh

EXPOSE 21025 21026

ENTRYPOINT ["/entry.sh"]

CMD ["start"]
