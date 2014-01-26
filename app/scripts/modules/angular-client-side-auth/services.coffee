"use strict"
define(['./app', './routes'], ->
  angular.module("angular-client-side-auth").factory "Auth", ($http, $cookieStore) ->
    changeUser = (user) ->
      _.extend currentUser, user
    accessLevels = routingConfig.accessLevels
    userRoles = routingConfig.userRoles
    currentUser = $cookieStore.get("user") or
    username: ""
    role: userRoles.public

    $cookieStore.remove "user"
    authorize: (accessLevel, role) ->
      role = currentUser.role  if role is `undefined`
      accessLevel.bitMask & role.bitMask

    isLoggedIn: (user) ->
      user = currentUser  if user is `undefined`
      user.role.title is userRoles.user.title or user.role.title is userRoles.admin.title

    register: (user, success, error) ->
      $http.post("/register", user).success((res) ->
        changeUser res
        success()
      ).error error

    login: (user, success, error) ->
      url = 'http://localhost:3000/users/auth/oauthio/callback'
#      url = 'http://localhost:3000/users/auth/oauthio'
      json = JSON.stringify(user.res)
      $http.post(url, json).success((response) ->
        console.log 'success'
        console.log(response)
      ).error((response) ->
        console.log 'error'
        console.log response
      )

##      url = 'http://localhost:3000/users/auth/facebook'
##      url = 'http://localhost:3000/oauth/authorize?client_id=dccf19ddc640cd2075fbba53f0e93efb61a83136719072f7ea27af2e852b165d&redirect_uri=urn:ietf:wg:oauth:2.0:oob&response_type=token'
#      url = 'http://localhost:3000/users/auth/oauthio/callback'
#      $http.get(url).success((response) ->
#        console.log(response)
#      ).error((response) ->
#        console.log 'error'
#        console.log response
#      )

#      $http.post(url, user).success((user) ->
#        changeUser user
#        success user
#      ).error error

#    login: (user, success, error) ->
#      $http.post("/login", user).success((user) ->
#        changeUser user
#        success user
#      ).error error

    logout: (success, error) ->
      $http.post("/logout").success(->
        changeUser
          username: ""
          role: userRoles.public

        success()
      ).error error

    accessLevels: accessLevels
    userRoles: userRoles
    user: currentUser

  angular.module("angular-client-side-auth").factory "Users", ($http) ->
    getAll: (success, error) ->
      $http.get("/users").success(success).error error

)
