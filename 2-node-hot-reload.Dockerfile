FROM node:carbon

# Create app directory
WORKDIR /app

# Install nodemon for hot reload
RUN npm install -g nodemon

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source
COPY src /app

EXPOSE 8080
CMD [ "nodemon", "server.js" ]
