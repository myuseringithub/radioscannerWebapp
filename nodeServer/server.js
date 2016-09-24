var express = require('express');
var httpProxy = require('http-proxy');

var app = express();
var apiProxy = httpProxy.createProxyServer();

app.use("/stream", function(req, res) {
    console.log('redirecting to Server1');
    apiProxy.web(req, res, {target: 'http://198.178.123.14:8424/'});
});

app.use('/', express.static(__dirname + '/../root/'));

app.listen(80, function() {
    console.log('listening')
});
