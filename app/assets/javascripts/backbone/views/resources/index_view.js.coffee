Shirika.Views.Resources ||= {}

class Shirika.Views.Resources.IndexView extends Backbone.View
  template: JST["backbone/templates/resources/index"]

  initialize: () ->
    @options.resources.bind('reset', @addAll)

  addAll: () =>
    @options.resources.each(@addOne)

  addOne: (resource) =>
    view = new Shirika.Views.Resources.ResourceView({model : resource})
    @$("tbody").append(view.render().el)

  render: =>
    $(@el).html(@template(resources: @options.resources.toJSON() ))
    @addAll()

    return this
