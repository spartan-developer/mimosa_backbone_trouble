templates = require 'templates'

class View extends Backbone.View
  render: =>
    @$el.html templates[@template](@data()) if @template

module.exports = View
