FROM node:boron

# Create app directory
WORKDIR /usr/src/hazelcastservice

# Install app dependencies
COPY package.json /usr/src/hazelcastservice/package.json
COPY package-lock.json /usr/src/hazelcastservice/package-lock.json
RUN npm install

# Bundle application source
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]