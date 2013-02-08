define ['jquery', 'templates', 'backbone'], ($, templates) ->

  class ExampleView

    render: (element) ->
      $(element).append templates.example({name:'Jade', css:'less'})
      $(element).append templates['another-example']({name:'Jade'})
      console.log Backbone.View

  ExampleView
