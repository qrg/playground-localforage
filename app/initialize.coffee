Application = require 'application'
routes = require 'routes'

$ ->
  console.debug 'initialize'

  localforage.setDriver 'localStorageWrapper'

  window.App = new Application {
    title           : 'Try localForage with Chaplin - qrg sandbox',
    controllerSuffix: '-controller',
    routes
  }
