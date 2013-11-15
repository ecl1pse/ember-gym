EmberGym.UserController = Ember.ObjectController.extend(
  deleteMode: false
  actions:
    delete: ->
      @toggleProperty('deleteMode')
    cancelDelete: ->
      @set('deleteMode', false)
    confirmDelete: ->
      @get('model').deleteRecord()
      @get('model').save()
      @transitionToRoute('users')
      @set('deleteMode', false)
)
