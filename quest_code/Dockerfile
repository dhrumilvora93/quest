FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm i
ENV SECRET_WORD 'quest001001222'
COPY . .
EXPOSE 3000
CMD [ "npm", "start" ]
