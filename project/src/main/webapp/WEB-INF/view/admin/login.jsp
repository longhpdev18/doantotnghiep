<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<form action="admin" method="POST">
				
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
					<button class="btn btn-primary btn-login rounded-8">Đăng nhập</button>
					<button class="btn btn-light btn-cancel rounded-8">Hủy</button>
				</div>
				
			</form>
			<h1>${message}</h1>
</body>
</html>