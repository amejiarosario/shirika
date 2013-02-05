class Shirika.Views.ResourcesIndex extends Backbone.View
  el: '#resources tbody'

  initialize: ->
    @collection.on 'reset', @addAll, this
    @collection.on 'add', @addAll, this
    @collection.on 'change', @sortAgain, this

  sortAgain: ->
    @collection.sort()
    @addAll()

  addOne: (item)->
    view = new Shirika.Views.ResourcesIndexRow(model: item)
    $(@el).append(view.render().el)

  addAll: ->
    $(@el).html ''
    @collection.each @addOne, this
