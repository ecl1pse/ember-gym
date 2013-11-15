# For more information see: http://emberjs.com/guides/routing/

EmberGym.Router.map ->
  @resource "users", ->
    @resource "user",
      path: "/:user_id", ->
        @route "edit"
    @route "create"

EmberGym.UsersRoute = Ember.Route.extend
  model: ->
    @store.find('user')
