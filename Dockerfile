# # First Stage: Alpine with curl
# FROM alpine:latest as builder

# RUN apk --no-cache add curl

FROM node:18-alpine

WORKDIR /app

COPY . .

# Install dependencies
RUN npm ci

ENV NODE_ENV production

# EXPOSE 8001

CMD ["node", "index.js"]