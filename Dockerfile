FROM node:7.9

COPY app.js /app/
COPY package.json /app/package.json
COPY yarn.lock /app/yarn.lock

RUN cd /app && yarn install

ENTRYPOINT ["node", "/app/app.js"]