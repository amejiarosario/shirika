Shirika.Views.Resources ||= {}

class Shirika.Views.Resources.ResourceView extends Backbone.View
  template: JST["backbone/templates/resources/resource"]

  events:
    "click .destroy" : "destroy"

  tagName: "tr"

  destroy: () ->
    @model.destroy()
    this.remove()

    return false

  render: ->
    $(@el).html(@template(@model.toJSON() ))
    return this
