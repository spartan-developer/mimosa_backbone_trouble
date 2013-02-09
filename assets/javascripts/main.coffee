requirejs.config
  urlArgs: "b=#{(new Date()).getTime()}"
  paths:
    jquery: 'vendor/jquery'
    underscore: 'vendor/underscore'
    backbone: 'vendor/backbone'
    ckeditor: 'vendor/ckeditor/ckeditor'
  shim:
    backbone: ['jquery', 'underscore']
    ckeditor:
      exports: 'CKEDITOR'

require ['app/views/home', 'backbone'], (HomeView) ->
  new HomeView().render()
