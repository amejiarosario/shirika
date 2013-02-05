class Shirika.Views.ResourcesIndexRow extends Backbone.View
  template: JST['resources/index']
  tagName: 'tr'

  render: ->
    @$el.html @template(model: @model)
    this
