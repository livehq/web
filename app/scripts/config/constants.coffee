define(['./../app', './environments/development', './environments/production'], ->
  streamCommander.app.config((ENV, $provide) ->
    constants = switch ENV
      when 'development' then new streamCommander.DevelopmentConfiguration
      when 'production' then new streamCommander.ProductionConfiguration
      else throw Error("Could not load configuration service!")

    $provide.constant('Constants', constants);
  )
)