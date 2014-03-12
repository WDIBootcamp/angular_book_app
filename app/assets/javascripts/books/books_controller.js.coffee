BookAppCtrls = angular.module("BookAppCtrls", [])

# BooksCtrl is a service
BookAppCtrls.controller("BooksCtrl", [
  "$scope", ($scope)->
        $scope.message = "Hello world!"

        $scope.fakeBooks = [
                id: 1
                title: "Happy Tails"
              ,
                id: 2
                title: "Bog Adventures"
              ]
        console.log $scope.fakeBooks
])
