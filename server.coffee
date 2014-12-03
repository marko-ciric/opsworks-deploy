http = require('http')
express = require('express')
jsonpack = require('jsonpack')
bodyParser = require('body-parser')
methodOverride = require('method-override')
path = require('path')
util = require('util')
log = require('./lib/log').logger

app = express()

http.createServer(app).listen(app.get 'port', (req, res) ->
  log.info util.format 'Server listening on port %s', app.get 'port')

