FROM node:alpine

WORKDIR /usr/app

RUN chown 1001:1001 /usr/app

COPY ./package.json ./

RUN npm install 

USER 1001

COPY ./ ./

CMD ["npm","start"]
