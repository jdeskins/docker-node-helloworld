'use strict';

var express = require('express');
var app = express();

app.get('/', function(req, res) {
  res.status(200).send('Hello world!');
});

app.get('/version', function(req, res) {
  res.status(200).send('1.0\n');
});

var server = app.listen(process.env.PORT || 8080, function () {
  var host = server.address().address;
  var port = server.address().port;
  console.log('App listening at http://%s:%s', host, port);
});
