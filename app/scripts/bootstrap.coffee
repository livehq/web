define(
  [
    'require',
#    'config',
#    'config/development',
    'namespace'
    'app'
  ],
(require) ->
  require(['domReady!'], (document) ->
    angular.bootstrap(document, ['webApp'])
  )
)