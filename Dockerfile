FROM node:22.17-alpine AS build-stage

ENV NODE_ENV=production

WORKDIR /app

COPY package*.json ./
RUN npm ci --include dev

COPY . .
RUN npm run build

VOLUME [ "/app/dist/apresentacao/browser" ]
