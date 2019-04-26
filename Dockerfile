FROM node:lts

WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install --loglevel silly

COPY . .

EXPOSE 3000
CMD [ "npm", "run", "start" ]