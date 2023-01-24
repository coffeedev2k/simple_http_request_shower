FROM node:latest

WORKDIR /app


RUN npm i express body-parser


COPY server.js server.js

CMD node server.js

EXPOSE 3000