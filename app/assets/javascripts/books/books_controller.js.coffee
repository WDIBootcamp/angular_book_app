BookAppCtrls = angular.module("BookAppCtrls", [])

# BooksCtrl is a service
BookAppCtrls.controller("BooksCtrl", [
  "$scope", "$http", "BookRes"
    ($scope, $http, BookRes)->

          $scope.allBooks = []

          BookRes.query((data) ->
              console.log(data);
              $scope.allBooks = $scope.allBooks.concat(data);
              )

          $scope.saveBook = ->
            # $http({
            #     method: "post",
            #     url: "/books.json",
            #     data: $scope.book,
            #     headers: {
            #         'X-CSRF-Token': $('meta[name=csrf-token]').attr('content')
            #     }
            #
            # }).success((data) ->
            #   console.log(data)
            #   $scope.newBooks.push(data)
            #   )

              newBook = BookRes.save($scope.book)
              $scope.allBooks.push(newBook)

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
