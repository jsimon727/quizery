Quizery.Models.Question = Backbone.RelationalModel.extend({ 
  urlRoot: "/quizzes/:quiz_id/questions"
});

Quizery.Collections.Questions = Backbone.Collection.extend({
  model: Quizery.Models.Question,
  url: "/quizzes/:quiz_id/questions"
});