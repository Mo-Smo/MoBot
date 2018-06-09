# Alpine Node Image
FROM node:carbon-alpine

# Create app directory
WORKDIR /usr/app

# Copy package info
COPY package.json package-lock.json ./

# Install app dependencies
RUN apk add --no-cache bash git openssh make gcc g++ python && \
  npm i -g npm && \
  npm ci && \
  apk del bash git openssh make gcc g++ python

# Bundle app source
COPY . .

# Start Node.js
CMD [ "node", "." ]
