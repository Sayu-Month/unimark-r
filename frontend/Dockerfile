FROM node:16.15.0-alpine

WORKDIR /app

RUN apk update && npm install -g npm

WORKDIR /app/unimark

CMD ["npm", "run", "dev"]
