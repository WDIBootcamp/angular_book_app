BookRouter = angular.module("BookRouter", [
  "ngRoute"
])

# for every module, you can configure something
BookRouter.config(["$routeProvider",
    ($routeProvider) ->

      $routeProvider.when("/",
        templateUrl: "/books"
        controller: "BooksCtrl"
      ).when("/books/:id",
        templateUrl: "/books/:id"
        controller: "BooksDetailsCtrl"
      )

])
