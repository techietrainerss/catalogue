FROM node:10

ENV INSTANA_AUTO_PROFILE true

EXPOSE 8080

WORKDIR /opt/server

COPY package.json /opt/server/

RUN npm config set node_gyp
RUN npm config set msvs_version 2017
RUN npm i

RUN npm install

COPY server.js /opt/server/

CMD ["node", "server.js"]

