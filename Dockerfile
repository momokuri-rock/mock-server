FROM node

RUN mkdir /usr/src/app
WORKDIR /usr/src/app

ENV PATH /user/src/app/node_modules/.bin:$PATH
ENV CHOKIDAR_USEPOLLING true

COPY package.json /usr/src/app/package.json
RUN npm install --silent

CMD ["npm", "start"]
