FROM node
# replace this with your application's default port
EXPOSE 80
WORKDIR /srv/projects/app/source/serverSide/nodeServer

COPY ./source/serverSide/nodeServer/ /srv/projects/app/source/serverSide/nodeServer
COPY ./source/clientSide/ /srv/projects/app/source/clientSide

RUN npm install --yes \
     && npm ls \
     && npm install -g nodemon \
     && mv /srv/projects/app/source/serverSide/nodeServer/node_modules /srv/projects/app/node_modules 

# RUN apt-get -y update && apt-get -y upgrade
CMD node /srv/projects/app/source/serverSide/nodeServer/server.js
