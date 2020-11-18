FROM 542036681178.dkr.ecr.us-east-2.amazonaws.com/node:12

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install
COPY . .

EXPOSE 8080
CMD [ "node", "server.js" ]
