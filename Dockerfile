FROM node:8-alpine
WORKDIR /app
VOLUME /app/locks

ENV NODE_ENV=production
ADD package.json /app
RUN npm install

ADD . /app
CMD ["npm", "start"]
