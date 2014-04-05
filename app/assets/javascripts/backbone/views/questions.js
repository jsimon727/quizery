// Quizery.Views.QuestionForm = Backbone.View.extend({
//   el: ".questionForm",

//   events: {
//     "submit": "createQuestions"
//   },

//   createQuestions: function(e) {
//     e.preventDefault();
//     var query = this.el.elements["category"].value;
//     var name     = this.el.elements["name"].value;
//     this.collection.create({
//       category: category,
//       name:     name
//     });
//     this.el.reset();
//     this.el.remove();
//   }
// });

// $(document).ready(function(){
//   var questions = new Quizery.Collections.Questions();
//   var questionFormView = new Quizery.Views.QuestionForm({collection: questions});

//   $(".nameAndCategory button").on("click", function(){
//     var questionForm = $("<form class='questionForm'></form>")
//     $(".step1").append((questionForm).append("Category:<select name='category'>" +
//                           "<option value='Math'>Math</option>" +
//                           "<option value='History'>History</option>" +
//                           "<option value='Grammar'>Grammar</option>" +
//                           "<option value='Science'>Science</option>" +
//                           "<option value='Health'>Health</option>" +
//                           "</select><br>"));
//     $(".step1").append((questionForm).append("Quiz Name: <input type='text', name='name'></input><br>"));
//     $(".step1").append((questionForm).append("<input type='submit', value='Save'></input>"));
//     $(".step1").slideDown("fast");
//   });
// })