FROM node:alpine

# set working directory
WORKDIR /ui

# install app dependencies
ENV PATH /node_modules/.bin:$PATH
ADD ../ui/package.json package.json
RUN npm install

# start app
CMD ["npm", "start"]