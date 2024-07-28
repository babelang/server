FROM node:20.16.0
WORKDIR /usr/src/app
COPY package.json ./
COPY yarn.lock ./
RUN yarn
RUN yarn build 
COPY . .
EXPOSE 8080
CMD [ "node", "dist/main.js" ]
