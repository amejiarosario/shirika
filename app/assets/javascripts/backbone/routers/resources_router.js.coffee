class Shirika.Routers.ResourcesRouter extends Backbone.Router
  initialize: ->
    @resources = new Shirika.Collections.ResourcesCollection()
    @resources.fetch()

  routes:
    "new"      : "newResource"
    "index"    : "index"
    ":id/edit" : "edit"
    ":id"      : "show"
    ".*"        : "index"

  newResource: ->
    @view = new Shirika.Views.Resources.NewView(collection: @resources)
    $("#resources").html(@view.render().el)

  index: ->
    @view = new Shirika.Views.Resources.IndexView(resources: @resources)
    $("#resources").html(@view.render().el)

  show: (id) ->
    resource = @resources.get(id)

    @view = new Shirika.Views.Resources.ShowView(model: resource)
    $("#resources").html(@view.render().el)

  edit: (id) ->
    resource = @resources.get(id)

    @view = new Shirika.Views.Resources.EditView(model: resource)
    $("#resources").html(@view.render().el)
