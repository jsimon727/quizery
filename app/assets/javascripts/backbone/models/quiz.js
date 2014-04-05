Quizery.Models.Quiz = Backbone.RelationalModel.extend({ 
  urlRoot: "/quizzes",

  relations: [{
    type: Backbone.HasMany,
    key: 'questions',
    relatedModel: 'Quizery.Models.Question',
    collectionType: 'Quizery.Collections.QuestionsCollection',
    reverseRelation: {
      key: 'quiz_id' 
    }
  }]
});

Quizery.Collections.Quizzes = Backbone.Collection.extend({
  model: Quizery.Models.Quiz,
  url: '/quizzes'
});