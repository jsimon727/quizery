Quizery.Views.QuizForm = Backbone.View.extend({
  el: ".quizForm",

  events: {
    "submit": "createQuiz"
  },

  createQuiz: function(e) {
    e.preventDefault();
    var category = this.el.elements["category"].value;
    var name     = this.el.elements["name"].value;
    this.collection.create({
      category: category,
      name:     name
    });
    this.el.reset();
    this.el.remove();
  }
});

$(document).ready(function(){
  var quizzes = new Quizery.Collections.Quizzes();
  var quizFormView = new Quizery.Views.QuizForm({collection: quizzes});

  $(".nameAndCategory button").on("click", function(){
    var quizForm = $("<form class='quizForm'></form>")
    $(".step1").append((quizForm).append("Category:<select name='category'>" +
                          "<option value='Math'>Math</option>" +
                          "<option value='History'>History</option>" +
                          "<option value='Grammar'>Grammar</option>" +
                          "<option value='Science'>Science</option>" +
                          "<option value='Health'>Health</option>" +
                          "</select><br>"));
    $(".step1").append((quizForm).append("Quiz Name: <input type='text', name='name'></input><br>"));
    $(".step1").append((quizForm).append("<input type='submit', value='Save'></input>"));
    $(".step1").slideDown("fast");
  });
})