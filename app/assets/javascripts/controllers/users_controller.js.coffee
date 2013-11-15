EmberGym.UsersController = Ember.ArrayController.extend(
  sortProperties: ["name"]
  sortAscending: true # false = descending

  usersCount: (->
    @get("model.length")
  ).property("@each")
)
