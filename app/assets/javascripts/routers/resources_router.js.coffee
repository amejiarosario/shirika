class Shirika.Routers.Resources extends Backbone.Router
	routes:
		'': 'index'

	initialize: ->
		console.log "Shirika.Routers#initialize"
		@collection = new Shirika.Collections.Resources()
		@collection.fetch()
		console.log "collection.length = #{@collection.length}"
		
	index: ->
		console.log "Shirika.Routers#index"
		view = new Shirika.Views.ResourcesIndex(collection: @collection)
		$('#container').html(view.render().el)
