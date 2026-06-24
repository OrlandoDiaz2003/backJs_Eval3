FROM node:22.23-slim

WORKDIR app

COPY package*.json .

RUN npm install --omit=dev && npm cache clean --force

COPY server.js .
EXPOSE 8081

CMD ["npm", "start"]
