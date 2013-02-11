class Shirika.Models.Resource extends Backbone.Model
  idAttribute: '_id'
  paramRoot: 'resource'

  defaults:
    title: null
    created_at: null
    last_accessed_at: null
    tags: null
    priority: null
    file: null
    user_id: null

class Shirika.Collections.ResourcesCollection extends Backbone.Collection
  model: Shirika.Models.Resource
  url: '/resources'
