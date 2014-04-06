Quizery.Views.QuestionForm = Backbone.View.extend({
  el: ".queryForm",

  events: {
    "submit": "createQuestions"
  },

  createQuestions: function(e) {
    e.preventDefault();
    var number = parseInt(this.$el.find("div").attr("class"));
    var query  = this.el.elements["query"].value;
    this.collection.create({
      number: number,
      query: query
    });
    this.el.reset();
    this.el.remove();
  }
});

  $(document).ready(function(){
    var questions = new Quizery.Collections.Questions();
    var questionFormView = new Quizery.Views.QuestionForm({collection: questions});
    var questionNumber = 0
    $(".addQuestionsButton").on("click", function(){
      $(".queryForm").slideDown("300")
      questionNumber = questionNumber + 1
      $(".queryForm").append($("<div class=" + questionNumber + ">Question Number:" + questionNumber + "</div><br>"));
      $(".queryForm").append("Question: <input type='textarea', name='query'></input><br>");
    });
    $(".queryForm").append("<input type='submit', value='Save'></input>");
  });