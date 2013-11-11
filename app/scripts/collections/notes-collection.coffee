###
  (c) 2013-2014 albatrosary
  Notepad may be freely distributed under the MIT license.
  For all details and documentation:
  https://github.com/albatrosary/backbone-app
###
define [
  "underscore"
  "backbone"
  "backboneLocalStorage"
  "../models/notes-model"
], (_, Backbone, LocalStorage, NotesModel) ->
  # Function-level strict mode syntax
  "use strict"
  class NotesCollection extends Backbone.Collection
  	
    model: NotesModel
  	
    localStorage: new LocalStorage('notes-demo')