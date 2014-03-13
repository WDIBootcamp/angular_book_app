BookAppCtrls = angular.module("BookAppCtrls", [])

# BooksCtrl is a service
BookAppCtrls.controller("BooksCtrl", [
  "$scope", "$http", "BookRes"
    ($scope, $http, BookRes)->

          $scope.newBooks = []

          BookRes.query((data) ->
              console.log(data);
              $scope.newBooks = $scope.newBooks.concat(data);
              )

          $scope.book = {};
          $scope.saveBook = ->
            $http({
                method: "post",
                url: "/books.json",
                data: $scope.book,
                headers: {
                    'X-CSRF-Token': $('meta[name=csrf-token]').attr('content')
                }

            }).success((data) ->
              console.log(data)
              $scope.newBooks.push(data)
              )

          # BookRes.query((data) ->
          #     console.log(data)
          #     $scope.newBooks.push(data)
          #     )

])

BookAppCtrls.controller("BooksDetailsCtrl", [
  "$scope", "$routeParams", "$http"
    ($scope, $routeParams, $http)->
          $scope.bookId = $routeParams.id

          $scope.book = null

          $http.get("/books/"+$scope.bookId+".json").
              success((data) ->
                  console.log(data);
                  $scope.book = data;
            )

])
