FROM node:20-alpine3.17 as builder 

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .




EXPOSE 3000
CMD ["npm", "run", "dev"]
