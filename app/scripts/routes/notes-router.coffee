###
  (c) 2013-2014 albatrosary
  Notepad may be freely distributed under the MIT license.
  For all details and documentation:
  https://github.com/albatrosary/backbone-app
###
define [
  'jquery'
  'backbone'
  '../views/main-view'
  '../views/list-view'
  '../collections/notes-collection'
], ($, Backbone, MainViews, ListViews, NotesCollections) ->
  # Function-level strict mode syntax
  'use strict'
  class NotesRouter extends Backbone.Router

    # localhost:9000/#main でコールすると mains 関数が実行される
    # "": localhost:9000 の呼び出し
    # "maim": localhost:9000/#main の呼び出し
    # "show": localhost:9000/#show の呼び出し
    routes:
      "": "mains"
      "main": "mains"
      "show": "lists"

    initialize: ->
      @collection = new NotesCollections()

      @mview = new MainViews
        collection: @collection

      @lview = new ListViews
        collection: @collection
      return

    mains: ->
      # 入力・タイトル一覧のレンダリング
      @mview.render()

    lists: ->
      @lview.render()