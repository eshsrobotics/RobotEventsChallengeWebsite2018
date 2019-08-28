FROM node:12.8.1-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn --pure-lockfile --no-cache

EXPOSE 8080

CMD ["yarn", "serve"]

