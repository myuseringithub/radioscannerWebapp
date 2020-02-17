var express = require('express');
var httpProxy = require('http-proxy');
var http = require('http');
var request = require('request');
var app = express();

app.use('/', express.static(__dirname + '/clientSide/'));
app.listen(80, function() {
    console.log('• Listening on port 80.')
});
