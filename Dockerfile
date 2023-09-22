# syntax=docker/dockerfile:1

FROM --platform=linux/amd64/v8 node:18-alpine
WORKDIR /app
COPY . .
RUN yarn install --production
CMD ["node", "src/index.js"]
EXPOSE 80