FROM node:lts-alpine as Build
WORKDIR /usr/src/app
RUN npm install -g typescript
COPY package*.json .
COPY tsconfig.json .
RUN npm install --omit=dev
RUN npm install -D @types/node
COPY src src
RUN npm run build

FROM node:lts-alpine as Production
WORKDIR /usr/src/app
COPY --from=Build /usr/src/app/dist .
CMD [ "node", "index.js" ]
