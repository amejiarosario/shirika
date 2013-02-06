# Creates namespace
window.Shirika =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: -> 
    console.log 'window.Shirika::init()'
    new Shirika.Routers.Resources
    Backbone.history.start()

$ ->
  Shirika.init()
