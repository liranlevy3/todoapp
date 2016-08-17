FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app/

# Install app dependencies
RUN npm install
RUN npm i -g bower
RUN bower install

EXPOSE 8080

CMD [ "npm", "start" ]
