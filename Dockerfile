FROM node:alpine

WORKDIR /usr/src/fire-fastpitch-api

COPY ./ ./

RUN npm install

CMD ["/bin/sh"]