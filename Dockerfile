FROM node:10

WORKDIR /opt/http-server

COPY . .
COPY ./public ./public

RUN npm install

# using port 8081 because alot of applications
# use port 8080 by default.
EXPOSE 8081

CMD ["npm", "start"]
