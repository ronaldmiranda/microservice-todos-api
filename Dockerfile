FROM node:8-alpine

EXPOSE 8082

WORKDIR /usr/src/app

COPY ./src/package.json ./
RUN npm install

COPY ./src .

ENTRYPOINT [ "npm" ]
CMD [ "start" ]
