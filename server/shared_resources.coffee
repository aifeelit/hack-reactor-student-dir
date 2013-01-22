Students = new Meteor.Collection 'students'

###
 example student document
    name: 'CJ Winslow'
    graduated: true
    emails: [
      {address: whoaa512@gmail.com}
      {address: winslowcj5@gmail.com}
    ]
    online_presence: [
      {type: 'blog', url: 'http://youcanlearn.it'}
      {type: 'personal', url: 'http://apps.youcanlearn.it'}
      {type: 'github', url: 'https://github.com/whoaa512'}
      {type: 'twitter', url: 'https://twitter.com/whoaa512'}
      {type: 'facebook', url: 'https://facebook.com/winslowcj5'}
      {type: 'linkedin', url: 'http://lnkd.in/44RzEE'}
    ]
###