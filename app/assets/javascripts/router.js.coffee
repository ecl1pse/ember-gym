# For more information see: http://emberjs.com/guides/routing/

EmberGym.Router.map ->
  @resource "users"

EmberGym.UsersRoute = Ember.Route.extend
  model: ->
    @store.find('user')
