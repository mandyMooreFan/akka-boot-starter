FROM node:alpine

# set working directory
RUN mkdir /src
WORKDIR /src

# install app dependencies
ENV PATH /ui/node_modules/.bin:$PATH
ADD package.json /src/package.json
RUN npm install

# start app
CMD ["npm", "start"]