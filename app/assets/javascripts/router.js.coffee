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

EmberGym.UserRoute = Ember.Route.extend
  model: (params) ->
    @store.find('user', params.user_id)

EmberGym.UserEditRoute = Ember.Route.extend
  model: ->
    @modelFor('user')

EmberGym.UsersCreateRoute = Ember.Route.extend(
  model: ->
    Em.Object.create {name: 'hi'}
  renderTemplate: ->
    @render "user.edit",
      controller: "usersCreate"
)
