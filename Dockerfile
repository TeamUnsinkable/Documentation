FROM node:current-alpine3.17

#Update System
RUN apk update && apk upgrade

#Copy Files
WORKDIR /app
COPY . /

#Install node pre-requesites
RUN npm i
RUN yarn install

EXPOSE 3000
CMD ["yarn", "docusaurus", "start", "--host=0.0.0.0"]
