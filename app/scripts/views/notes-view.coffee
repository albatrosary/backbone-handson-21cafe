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
  class NotesView extends Backbone.View

    el: $ "#main"

    template: JST["app/scripts/templates/notes.ejs"]

    initialize: ->

    render: ->
      $("#notes").html @template
      this