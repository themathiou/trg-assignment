
#get latest node as base image
FROM node:latest

#Creating a new directory for app files and setting path in the container
RUN mkdir -p /usr/src/app

#setting working directory in the container
WORKDIR /usr/src/app

#copying the package.json file(contains dependencies) from project source dir to container dir
COPY package.json /usr/src/app

# installing the dependencies into the container
RUN npm install

#copying the source code of Application into the container dir
COPY . /usr/src/app

#container exposed network port number
EXPOSE 7500

#command to run within the container
CMD ["npm", "start"]