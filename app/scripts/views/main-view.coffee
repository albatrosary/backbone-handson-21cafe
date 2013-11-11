###
  (c) 2013-2014 albatrosary
  Notepad may be freely distributed under the MIT license.
  For all details and documentation:
  https://github.com/albatrosary/backbone-app

  <div id="main"></div>に
  上段に入力領域、下段に入力したタイトル一覧を表示する
  app/scripts/templates/main.ejs
    <div class="notes-inputs" id="notes"></div>
    <div class="notes-lists" id="notes-list"></div>
###
define [
  "jquery"
  "underscore"
  "backbone"
  "templates"
  "./notes-view"
  "./title-list-view"
], ($, _, Backbone, JST, Notes, Titlelists) ->
  # Function-level strict mode syntax
  "use strict"
  class NotesView extends Backbone.View

    el: $ "#main"

    template: JST["app/scripts/templates/main.ejs"]
    
    initialize: ->
      # メモ本体
      @note = new Notes
        collection: @collection
      #リスト
      @titlelist = new Titlelists
        collection: @collection
      return
      
    render: ->
      @$el.html @template
      # 入力領域のレンダリング
      @note.render()
      # 一覧領域のレンダリング
      @titlelist.render()
      this

  