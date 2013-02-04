class Shirika.Views.ResourcesIndex extends Backbone.View
  template: JST['resources/index']

  initialize: ->
  	@collection.on('reset', @render, this)

  render: ->
  	$(@el).html(@template(collection: @collection))
  	this

