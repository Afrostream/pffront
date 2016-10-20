FROM node:4.5

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY . /usr/src/app/
RUN npm install

CMD [ "npm", "start" ]
EXPOSE 5601
