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
$('#btn-register').click(function(e){
	e.preventDefault();
	register();
});
function register(){
	var username = document.getElementById("usernameRegister").value;
	var email = document.getElementById("email").value;
	var password = document.getElementById("passwordRegister").value;
	
	var repassword = document.getElementById("repassword").value;
	if(password!=repassword){
		toastr.error('Mật khẩu xác nhận không trùng khớp!');
		return false;
	}
	var fullname = document.getElementById("fullname").value;
	var phone = document.getElementById("phone").value;
	var address = document.getElementById("address").value;
	if (username && password) {
		$.ajax({
			url:'/register',
			type:'POST',
			contentType:'application/json',
			data:JSON.stringify(
				{
					'tendangnhap':username,
					'matkhau':password,
					'email':email,
					'fullname':fullname,
					'sodienthoai':phone,
					'diachi':address
				}
			),
			dataType:'json',
			success:function(result){
				if(result.value!=null){
					toastr.success('Đăng ký thành công!');
					setTimeout(function(){	location.reload();},3000)
				
				
				}else{
					toastr.error('Lỗi!');
				}
			},error:function(err){
				console.log(err)
			}
			
		})
	}
}