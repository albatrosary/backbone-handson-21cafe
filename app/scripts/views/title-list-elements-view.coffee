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
  class ListElementView extends Backbone.View

    el: "#notes-entry"
    #tagName: "li"

    template: JST["app/scripts/templates/title-list-elements.ejs"] 

    initialize: ->
      @listenTo @model, 'change', @render
      @listenTo @model, 'destroy', @remove
      return

    render: ->
      $(@.el).append @template
      #$("#notes-entry").append @template
        #"id": @model.get "id"
        "title": @model.get "title"
    remove: ->
      console.log "model.remove"

    #events:
    #  'click .delete': '_onClickDelete'
    #  'click .change': '_onClickChange'
      
    #_onClickDelete: ->
    #  @model.destroy() if confirm 'are you sure?'

    #_onClickChange: (item)->
    #  console.log "_onClickChange"


