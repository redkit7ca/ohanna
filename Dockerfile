FROM node:13.12.0-alpine

WORKDIR /app

# add the $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY . .
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent
EXPOSE 80
CMD ["npm", "start"]