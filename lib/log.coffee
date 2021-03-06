winston =  require 'winston'
Logger = require('winston').Logger

exports.logger = new Logger({
  transports: [
    new (winston.transports.Console)({
      level: 'debug'
      colorize: 'true'
      timestamp: true
    }),
    new (winston.transports.File)({
      filename: 'trucktrack.log'
      level: 'info'
    })
  ]
  exceptionHandlers: [
    new (winston.transports.File)({
      filename: 'error.log'
      level: 'error'
    })
  ]
});


