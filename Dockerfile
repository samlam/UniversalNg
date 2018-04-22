FROM node:8.11-alpine

WORKDIR /base
RUN npm install -g npm@latest

COPY package.json /base
RUN npm install
EXPOSE 4200

COPY . /base
CMD npm start




