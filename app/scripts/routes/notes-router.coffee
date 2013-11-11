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
      @mview.render()

    lists: ->
      @lview.render()