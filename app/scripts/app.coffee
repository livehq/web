'use strict'

define(['angular'], ->
  NAMESPACE = 'streamCommander'
  app = angular.module('webApp', [
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute'
  ])

  namespace NAMESPACE, (exports) ->
    exports.NAMESPACE = NAMESPACE
    exports.app = app
)
