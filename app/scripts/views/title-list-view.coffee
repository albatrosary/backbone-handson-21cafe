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
  "../views/title-list-elements-view"
], ($, _, Backbone, JST, ListElementView) ->
  # Function-level strict mode syntax
  "use strict"
  class ListView extends Backbone.View

    el: $ "#main"

    template: JST["app/scripts/templates/title-list.ejs"]
    templateElements: JST["app/scripts/templates/title-list-elements.ejs"] 

