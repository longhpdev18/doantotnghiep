$('#formLogin').click(function(e){
	e.preventDefault();
	
	login();
});
function login(){
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	if (username && password) {
		$.ajax({
			url:'/admin/login',
			type:'POST',
			contentType:'application/json',
			data:JSON.stringify(
				{
					'username':username,
					'password':password
				}
			),
			dataType:'json',
			success:function(result){
				console.log(result);
				if(result.value=='success'){
					window.location.href = '/admin/index';
					window.open();
				}else{
					toastr.error(result.value);
				}
			},error:function(err){
				console.log(err)
			}
			
		})
	}
}