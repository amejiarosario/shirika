Shirika.Views.Resources ||= {}

class Shirika.Views.Resources.EditView extends Backbone.View
  template : JST["backbone/templates/resources/edit"]

  events :
    "submit #edit-resource" : "update"

  update : (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.save(null,
      success : (resource) =>
        @model = resource
        window.location.hash = "/#{@model.id}"
    )

  render : ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
