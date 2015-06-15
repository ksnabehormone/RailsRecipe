'use strict'

angular.module 'frontApp'
  .factory 'BookService', ($http) ->
    url = 'http://localhost:3000'

    getAll: ->
      $http.get url + '/books'

    add: (obj) ->
      $http.post url + '/books.json', obj

    delete: (id) ->
      $http.delete url + '/books/' + id + '.json'
