Template.student_entry.student = ->
  Students.find {}

Meteor.Router.add
  '/'     : 'table'
  '/new'  : 'new_student'

Template.new_student.events
  'submit form' : (e, template) ->
    e.preventDefault()
    formData = {}
    # grab all submitted form data
    template.findAll('input').forEach (i)->
      if i.value != 'submit'
        formData[i.getAttribute('data-name')] = i.value
    Meteor.call 'queue_new', formData
    Meteor.Router.to '/'
    # make call to save to DB
    # Meteor.call 'save_student'
