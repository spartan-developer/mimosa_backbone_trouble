require
  urlArgs: "b=#{(new Date()).getTime()}"
  paths:
    jquery: 'vendor/jquery'
    underscore: 'vendor/underscore'
    backbone: 'vendor/backbone'
  shim:
    backbone: ['jquery', 'underscore']
  , ['app/example-view']
  , (ExampleView) ->
    view = new ExampleView()
    view.render('body')
