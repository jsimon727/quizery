// Quizery.Views.AnswerForm = Backbone.View.extend({
//   el: ".answerForm",

//   events: {
//     "submit": "createAnswers"
//   },

//   createAnswers: function(e) {
//     e.preventDefault();
//     var number = this.el.elements["number"].value;
//     var name  = this.el.elements["name"].value;
//     this.collection.create({
//       number: number,
//       name: name
//     });
//     this.el.reset();
//     this.el.remove();
//   }
// });

//   $(document).ready(function(){
//     var answers = new Quizery.Collections.Answers();
//     var answerFormView = new Quizery.Views.AnswerForm({collection: answers});
//   });