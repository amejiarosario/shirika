class Shirika.Collections.Resources extends Backbone.Collection
  model: Shirika.Models.Resource
  url: '/resources' # allows to fetch all the elemetns from the server

  comparator: (resource)->
    resource.get('priority')
