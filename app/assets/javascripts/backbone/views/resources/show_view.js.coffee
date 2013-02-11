Shirika.Views.Resources ||= {}

class Shirika.Views.Resources.ShowView extends Backbone.View
  template: JST["backbone/templates/resources/show"]

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
