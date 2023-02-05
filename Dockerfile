FROM node:16

COPY package.json .

COPY . .

COPY .env .

RUN npm install --ignore-scripts=false --foreground-scripts --verbose sharp

RUN npm run build

EXPOSE 1337

CMD ["npm", "start"]
