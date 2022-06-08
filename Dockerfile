FROM node:16

WORKDIR /app

COPY ["package.json", "package-lock.json", "/app/"]

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "start"]
