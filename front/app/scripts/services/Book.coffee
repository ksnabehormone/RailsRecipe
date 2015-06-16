'use strict'

###
ngResourceを使って書いてみる

serviceでシングルトンにする

$resource(url[, paramDefaults][, actions]);
  -> actionsの指定を$acitonで呼べる

使い方
Book.query()
これで全件取得し、Resourceオブジェクトを返してくれる

Book.get(パラメータ, callback関数)

###
angular.module 'frontApp'
  .service 'Book', ($resource) ->
    url = 'http://localhost:3000/books/:id\.json'

    $resource url, { id: '@id'}, {}
