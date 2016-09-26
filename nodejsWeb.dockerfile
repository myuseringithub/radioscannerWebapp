FROM node
# replace this with your application's default port
EXPOSE 80
WORKDIR /srv/projects/app/nodeServer

COPY ./nodeServer/ /srv/projects/app/nodeServer
COPY ./root/ /srv/projects/app/root

RUN npm install --yes \
     && npm ls \
     && npm install -g nodemon \
     && mv /srv/projects/app/nodeServer/node_modules /srv/projects/app/node_modules 

# RUN apt-get -y update && apt-get -y upgrade
CMD node /srv/projects/app/nodeServer/server.js
