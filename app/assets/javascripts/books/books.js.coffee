# add dependencies in the array

BookApp = angular.module("BookApp", [
  "BooksService",
  "BookRouter",
  "BookAppCtrls"
])


# BookApp.config(["$httpProvider",
#     function($httpProvider) {
#      $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
# }]);
