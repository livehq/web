'use strict'

define(['angular'], ->
  NAMESPACE = 'streamCommander'
  app = angular.module('webApp', [
    'config',
    'ngCookies',
    'ngResource',
    'ngSanitize',
    'ngRoute',
    'angular-client-side-auth'
  ])

  namespace NAMESPACE, (exports) ->
    exports.NAMESPACE = NAMESPACE
    exports.app = app
)
