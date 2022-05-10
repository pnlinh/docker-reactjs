FROM node:16 AS development
ENV NODE_ENV development

RUN mkdir -p /app
WORKDIR /app

COPY ["package.json", "package-lock.json", "/app/"]

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
