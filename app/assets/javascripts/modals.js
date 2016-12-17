$(document).on("click","#btn-login",function(e){
	e.preventDefault()
  $('#signupModal').modal('hide');
  $('#loginModal').modal('show');
});

$(document).on("click","#btn-signup",function(e){
	e.preventDefault()
  $('#loginModal').modal('hide');
  $('#signupModal').modal('show');
});
