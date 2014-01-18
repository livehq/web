'use strict'

root = (exports ? this)

components = root.components = './../bower_components/'

# This is a hack to clear up an error that shows up with angular.
root.window.scrollTo = ->
  false

require.config({
  paths: {
#    websocketRails: narwhaltalkLibs + 'websocket_rails',
#    jquery: narwhalComponents + 'jquery/jquery',
    angular: components + 'angular/angular',
    domReady: components + 'requirejs-domready/domReady',
#    angularResource: narwhalComponents + 'angular-resource/angular-resource',
#    angularCookies: narwhalComponents + 'angular-cookies/angular-cookies',
#    angularSanitize: narwhalComponents + 'angular-sanitize/angular-sanitize',
#    jsdebugRails: narwhalComponents + 'jsdebug-rails/lib/generators/jsdebug/install/templates/jsdebug',
#    jqueryAtmosphere: camfireComponents + 'atmosphere-javascript/modules/jquery/src/main/webapp/jquery/jquery.atmosphere',
##    async: narwhalComponents + 'async/lib/async',
    namespace: 'lib/namespace',
  },

  shim: {
#  'jquery': {},
#  'jsdebugRails': {},
#  'jqueryAtmosphere': {
#    deps: ['jquery']
#  },
##    'async': {}
  'namespace': {},
#  'webRtcAdapter': {},
  'angular': {},
#  'angularResource': {
#    deps: ['angular']
#  },
#  'angularCookies': {
#    deps: ['angular']
#  },
#  'angularSanitize': {
#    deps: ['angular']
#  },
#  'websocketRails': {},
#    'domReady': {}
  },

  deps: [
#    narwhalComponents + 'camfire-angular-module/.tmp/scripts/main',
    './bootstrap'
  ]
});


require([
  './config/routes',
  './controllers/main'

#  'services/services',
#  'services/socket_service',
#  'services/binding_service',
#  'services/dispatch_service',
#  'services/connectivity_service',
#  'services/user_service',
#
#  'controllers/controllers',
#  'controllers/connectivity_controller',
#  'controllers/user_controller',
#
#  'directives/directives',
##  "directives/bootstrap_modal_directive",
#
], ->)
