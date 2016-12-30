#!/bin/bash
# LF - Make sure to change format type to UNIX "LF" in editor so that the file would work.

# Current directory is the "working diretory" set by docker-compose which is "/app".

# Download dependencies & run tests.
cd ./setup/test
npm install
npm run test

# build app for production.
cd ../build
npm install
npm run build
