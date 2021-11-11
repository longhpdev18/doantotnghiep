<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:url var = "urlLogin" value = "/admin/login"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />

<!-- FLAT-ICON -->
<link rel=”stylesheet”
	href=”https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css” />

<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<form id="formSubmit">
				
				<div class="form-group">
					<label for="username">
						Tên tài khoản:
					</label>
					<input type="text" name="username" id="username" class="txtUsername" placeholder="Tài khoản"
						required>
				</div>
				<div class="form-group">
					<label for="password">
						Mật khẩu:
					</label>
					<input type="password" name="password" id="password" class="txtPassword" placeholder="Mật khẩu"
						required>
				</div>
				<div class="chk-remember">
					<input type="checkbox" name="chkremember" id="chkremember" class="chkRemember">
					<p>Ghi nhớ tài khoản</p>
				</div>
				<div class="group-button">
					<button class="btn btn-primary btn-login rounded-8" id="btnLogin">Đăng nhập</button>
					<button class="btn btn-light btn-cancel rounded-8">Hủy</button>
				</div>
				
			</form>
			<script>
				$('#btnLogin').click(function(e){
					e.preventDefault();
					var data={};
					var formData =$('#formSubmit').serializeArray();
					$.each(formData,function(i,v){
						data[""+v.name+""]=v.value;
					});
					login(data);
				});
				function login(data){
					$.ajax({
						url:'${urlLogin}',
						type:'POST',
						contentType:'application/json',
						data:JSON.stringify(data),
						dataType:'json',
						success:function(result){
							window.location.href="/admin/index";
							window.open();
						},error:function(err){
							console.log(err)
						}
					})
				}
			</script>
</body>
</html>