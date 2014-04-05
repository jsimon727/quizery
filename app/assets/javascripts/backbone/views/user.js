Quizery.Views.UserForm = Backbone.View.extend({
  el: ".joinForm",

  events: {
    "submit": "createUser"
  },

  createUser: function(e) {
    e.preventDefault();
    var type = this.el.elements["type"].value;
    var email = this.el.elements["email"].value;
    var first_name = this.el.elements["first_name"].value;
    var last_name = this.el.elements["last_name"].value;
    var password = this.el.elements["password"].value;
    var password_confirmation = this.el.elements["password_confirmation"].value;
    console.log(type)
    console.log(email)
    this.collection.create({
      type: type,
      email: email, 
      first_name: first_name, 
      last_name: last_name,
      password: password,
      password_confirmation: password_confirmation
    });
    this.el.reset();
    this.el.remove();
  }
});

$(document).ready(function(){
  var users = new Quizery.Collections.Users();
  var joinFormView = new Quizery.Views.UserForm({collection: users});
  $(".joinbutton").on("click", function(){
    $(".joinForm").append("<select name='type'><option value='Student'>Student</option><option value='Teacher'>Teacher</option></select><br>");
    $(".joinForm").append("Email: <input type='email', name='email'></input><br>");
    $(".joinForm").append("Password: <input type='password', name='password'></input><br>");
    $(".joinForm").append("Password Confirmation: <input type='password', name='password_confirmation'></input><br>");
    $(".joinForm").append("First Name: <input type='text', name='first_name'></input><br>");
    $(".joinForm").append("Last Name: <input type='text', name='last_name'></input><br>");
    $(".joinForm").append("<input type='submit', value='Join'></input>");
    $(".joinbutton").remove();
  });
})


