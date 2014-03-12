# add dependencies in the array

BookApp = angular.module("BookApp", [
  "BookAppCtrls"
])

BookRouter = angular.module("BookRouter", [
  "ngRoute"
])

# for every module, you can configure something
BookRouter.config(["$routeProvider",
    ($routeProvieder) ->

      $routeProvider.when("/",
        templateUrl: ""
        controller: "BooksCtrl"
      )

])
