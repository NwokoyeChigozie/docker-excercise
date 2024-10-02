FROM node:20.15.0-alpine3.20

# SET working directory
WORKDIR /app

# RUN updates and add bash
RUN apk update && apk add bash

# copy package files
COPY package*.json ./

# install app dependencies
RUN npm i

#copy build context files
COPY . .


EXPOSE 3000


CMD [ "npm", "run", "dev" ]
