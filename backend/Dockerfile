FROM node:alpine

WORKDIR /app
COPY ./package.json .
RUN npm install
COPY . . 

ENV ENV=prod
EXPOSE 80

CMD [ "npm", "start" ]