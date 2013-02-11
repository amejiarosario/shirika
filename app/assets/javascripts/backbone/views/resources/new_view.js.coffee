Shirika.Views.Resources ||= {}

class Shirika.Views.Resources.NewView extends Backbone.View
  template: JST["backbone/templates/resources/new"]

  events:
    "submit #new-resource": "save"

  constructor: (options) ->
    super(options)
    @model = new @collection.model()

    @model.bind("change:errors", () =>
      this.render()
    )

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()

    @model.unset("errors")

    @collection.create(@model.toJSON(),
      success: (resource) =>
        @model = resource
        window.location.hash = "/#{@model.id}"

      error: (resource, jqXHR) =>
        @model.set({errors: $.parseJSON(jqXHR.responseText)})
    )

  render: ->
    $(@el).html(@template(@model.toJSON() ))

    this.$("form").backboneLink(@model)

    return this
