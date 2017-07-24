FROM node:boron

# Create app directory
WORKDIR /usr/src/hazelcastservice

# Install app dependencies
COPY package.json package-lock.json .
RUN npm install

# Bundle application source
COPY . .

EXPOSE 3000
CMD [ "npm", "start" ]