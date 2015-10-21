var express = require('express')
  , mongoose = require('mongoose')
  , db = require('./db-config')
  , bodyParser = require('body-parser')
  , clientRoutes = require('./client-routes')
  , app = express();

app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use('/client', clientRoutes);

module.exports = app;
