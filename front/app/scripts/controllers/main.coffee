'use strict'

###*
 # @ngdoc function
 # @name frontApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the frontApp
###
angular.module 'frontApp'
  .controller 'MainCtrl', ['$scope', 'BookService', ($scope, BookService) ->

    # 一覧取得
    BookService.getAll().then (res) ->
      console.log res.data
      $scope.books = res.data

    # 追加
    $scope.addBook = ->
      obj =
        book =
          name: $scope.new_name
          finished_flg: 0

      BookService.add(obj).then (res) ->
        $scope.books.push obj

    # 削除
    $scope.deleteBook = (index)->
        id = $scope.books[index]
        BookService.delete(index).then (res) ->
          $scope.books.splice index, 1

    # 全件ステータス更新
    $scope.allStatusUpdate = ->
      oldBooks = $scope.books
      $scope.books = []

      oldBooks.forEach (book) ->
        book.finished_flg = true
        $scope.books.push book
  ]
