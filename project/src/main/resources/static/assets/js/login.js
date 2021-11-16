$('#btnLoginIndex').click(function(e){
	e.preventDefault();
	
	login();
});
$('#btnCancelLoginIndex').click(function(e){
	e.preventDefault();
});
$('.btn-Logout').click(function(e){
	e.preventDefault();
	$.ajax({
		url:'/logout',
		type:'GET',
		contentType:'application/json',
		dataType:'json',
		success:function(result){
				location.reload();
			
		},error:function(err){
			console.log(err)
		}
		
	})
})
function login(){
	var username = document.getElementById("username").value;
	var password = document.getElementById("password").value;
	if (username && password) {
		$.ajax({
			url:'/login',
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
				if(result.value!=null){
					
					location.reload();
				
				}else{
					toastr.error('Sai tài khoản hoặc mật khẩu!');
				}
			},error:function(err){
				console.log(err)
			}
			
		})
	}
}