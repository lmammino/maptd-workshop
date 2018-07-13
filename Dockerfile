FROM node:8.11.1-wheezy

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json /usr/src/app/
RUN npm install --production

# Bundle app source
RUN mkdir -p /usr/src/app/
COPY . /usr/src/app/

EXPOSE 3000
CMD [ "npm", "run", "dev" ]
