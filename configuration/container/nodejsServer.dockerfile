# USAGE: 
# current directory = root folder of app (serves as context of docker build).
# docker build -t <imagename> -f configuration/container/nodejsWeb.dockerfile ./
# docker run -d -p 80:80 <imagename>
FROM node
# Doesn't make it exposed to host. for that use -p flag .
EXPOSE 80
WORKDIR /app/source/serverSide/nodeServer

COPY ./source/ /app/source/

RUN npm install --yes \
     && npm ls \
     && npm install -g nodemon \
     && mv /app/source/serverSide/nodeServer/node_modules /app/node_modules 
    # npm install with prefix can be used to specify destination folder for node_modules:
    # npm install --prefix <path/to/prefix_folder> -g

# RUN apt-get -y update && apt-get -y upgrade
CMD node /app/source/serverSide/nodeServer/server.js
