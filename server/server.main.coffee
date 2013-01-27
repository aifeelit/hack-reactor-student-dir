Meteor.startup( ->
)

Meteor.methods
  'queue_new': (formDataObj) ->
    Students.insert formDataObj
