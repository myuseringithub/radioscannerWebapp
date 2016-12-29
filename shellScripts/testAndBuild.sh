#!/bin/bash
# LF - Make sure to change format type to UNIX "LF" in editor so that the file would work.

# Download dependencies & run tests.
cd /app/tests
npm install
npm run test

# build app for production.
cd /app/build
npm install
npm run build
