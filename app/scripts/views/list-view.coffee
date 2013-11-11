###
  (c) 2013-2014 albatrosary
  Notepad may be freely distributed under the MIT license.
  For all details and documentation:
  https://github.com/albatrosary/backbone-app
###
define [
  "jquery"
  "underscore"
  "backbone"
  "templates"
], ($, _, Backbone, JST) ->
  # Function-level strict mode syntax
  "use strict"
  class ShowView extends Backbone.View

    el: $ "#main"

    template: JST["app/scripts/templates/list.ejs"]

    templateElements: JST["app/scripts/templates/list-elements.ejs"]

    # initialize でrenderをしない！！
    #initialize: () ->
    #  this.render()

    render: ->
      $(@el).html @template
      # collection.each の中に定義された this が ListView に bind されるよう fat arrow で定義
      @collection.each (item) =>
        $("#notes-list").append @templateElements
          "title": item.get "title"
          "contents": item.get "contents"
      this


    