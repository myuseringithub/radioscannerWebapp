# Radio Scanner WebApp
- Simple Nodejs app, playing streamed media using web audio API. 
- A stream service (Apache proxy) proxies media stream from a Shoutcast server.

![Screencast](/documentation/screenshot.PNG)


# Deployment
- Provided as a Docker services: 
  - [Docker container for Apache stream](https://hub.docker.com/repository/docker/myuserindocker/radioscanner-webapp-apachestreamproxy).
  - [Docker container for Nodejs HTML server](https://hub.docker.com/repository/docker/myuserindocker/radioscanner-webapp-nodejs).
- Install:

    `./script/run.sh production`