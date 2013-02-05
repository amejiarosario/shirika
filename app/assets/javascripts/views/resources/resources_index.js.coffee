class Shirika.Views.ResourcesIndex extends Backbone.View
  el: '#resources tbody'

  initialize: ->
  	@collection.on('reset', @addAll, this)
  	@collection.on('add', @addAll, this)

  addOne: (item)->
    view = new Shirika.Views.ResourcesIndexRow(model: item)
    $(@el).append(view.render().el)

  addAll: ->
    $(@el).html ''
    @collection.each @addOne, this

