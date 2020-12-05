FROM node:alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/

RUN apk add --update \
    python \
    python-dev \
    py-pip \
    build-base

RUN npm install


EXPOSE 80
CMD [ "npm", "start", "--force" ]
