class Shirika.Views.ResourcesIndexRow extends Backbone.View
  template: JST['resources/index']
  tagName: 'tr'

  initialize: ->
    @model.on 'change', @render, this
    @model.on 'destroy', @remove, this

  events:
    'click .priority-up' : 'increasePriority'
    'click .priority-down' : 'decreasePriority'
    'click .destroy-button' : 'destroy'

  increasePriority: ->
    @model.set('priority',@model.get('priority')+1)
    @model.save()

  decreasePriority: ->
    @model.set('priority',@model.get('priority')-1)
    @model.save()

  destroy: ->
    @model.destroy()

  render: ->
    @$el.html @template(model: @model)
    this
