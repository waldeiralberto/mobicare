FROM node

RUN mkdir -p /home/node/app
WORKDIR /home/node/app

COPY package.json ./
COPY server.js ./

RUN npm install

EXPOSE 8080

CMD [ "nodejs", "/home/node/app/server.js" ]