Meteor.startup( ->
)

Meteor.methods
  'queue_new': (formDataObj) ->
    new_student =
      name            : formDataObj.name
      email           : formDataObj.email
      class_date      : formDataObj.class_date
      online_presence : [
        {
          type  : 'github'
          plain : formDataObj.github
          url   : "https://github.com/#{formDataObj.github}"}
        {
          type  : 'blog'
          plain : formDataObj.blog
          url   : "http://#{formDataObj.blog}"}
        {
          type  : 'site'
          plain : formDataObj.site
          url   : "http://#{formDataObj.site}"}
        {
          type  : 'twitter'
          plain : formDataObj.twitter
          url   : "https://twitter.com/#{formDataObj.twitter}"}
        {
          type  : 'facebook'
          plain : formDataObj.facebook
          url   : "https://facebook.com/#{formDataObj.facebook}"}
      ]

    Students.insert new_student
