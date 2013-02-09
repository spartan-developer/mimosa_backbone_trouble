View     = require 'app/view'
ckeditor = require 'ckeditor'

class HomeView extends View
  template: 'home'

  el: '#container'

  initialize: ->
    super
    console.log 'Here I am!'

  render: =>
    super
    plugins = [
      'maximize'
      'placeholder'
      'tabindent'
    ].join(',')
    editor = ckeditor.replace 'editor', extraPlugins: plugins
    editor.setKeystroke(CKEDITOR.TAB, 'increaseIndent')

  data: ->

module.exports = HomeView
