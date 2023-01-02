/*------ Javascript chung ------*/
// $('#login-error').on('change', function(){
// 	let error = $("#login-error").html();
// 	if ( error == '' ) {
// 		$("#login-error").hide();
// 	} else {
// 		$("#login-error").show();
// 	}
// });

var user_changepass_form = document.querySelectorAll ('#user-changepass-form')
Array.prototype.slice.call(user_changepass_form)
.forEach(function(form) {
	form.addEventListener('submit', function(event) {
		if (!form.checkValidity()) {
			event.preventDefault()
			event.stopPropagation()
		}
		form.classList.add('was-validated');
	})
})