// Quizery.Views.QuizForm = Backbone.View.extend({
//   el: ".newQuiz form",

//   events: {
//     "submit": "createQuiz"
//   },

//   createQuiz: function(e) {
//     e.preventDefault();
//     var category       = this.el.elements["category"].value;
//     var name           = this.el.elements["name"].value;
//     var start_date     = this.el.elements["start_date"].value;
  
    
//     this.collection.create({
//       category: category,
//       name: name,
//       start_date: start_date
//     });
 
//     this.el.reset();
//     this.el.remove();
//   }
// });

// $(document).ready(function(){
//   var quizzes = new Quizery.Collections.Quizzes();
//   var quizFormView = new Quizery.Views.QuizForm({collection: quizzes});

//     $("#quiz_start_date").datepicker();

//   function remove_fields(link) {
//     $(link).prev("input[type=hidden]").val("1");
//     $(link).closest(".fields").hide();
//   }

//   function add_fields(link, association, content) {
//     var new_id = new Date().getTime();
//     var regexp = new RegExp("new_" + association, "g")
//     $(link).parent().before(content.replace(regexp, new_id));
//   }
// });