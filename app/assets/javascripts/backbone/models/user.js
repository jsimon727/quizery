Quizery.Models.User = Backbone.Model.extend({ 
  urlRoot: "/users"
});

Quizery.Collections.Users = Backbone.Collection.extend({
  model: Quizery.Models.User,
  url: "/users" 
});