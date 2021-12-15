<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>
<link rel="shortcut icon" href="../../assets/images/logo.png">
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Login</title>
<!--CSS-->
<link rel="stylesheet" href="./assets/css/admin/login.css">
<!--CSS-->
<link rel="stylesheet" href="./assets/css/admin/2.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
<!-- BOXICON -->
<script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<!--LINE AWSOME-->
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<form class="form-login" id="formLogin">
		<img src="./assets/images/logo.png" alt="">
		<div class="box">
			<input type="text" name="username" id="username" class="txtUsername"
				placeholder="Tài khoản" required>
		</div>
		<div class="box">
			<input type="password" name="username" id="password"
				class="txtPassword" placeholder="Mật khẩu">
		</div>
		<button type="submit" class="btn_Login">Đăng nhập</button>
		<!-- <div class="query">
            <p>Quên <a href="">Mật khẩu</a>?</p>
            <p>Tạo một <a href="">Tài khoản</a>?</p>
        </div> -->
	</form>
</body>
<!--Link icon-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="./assets/js/admin/hovered.js"></script>
<script src="./assets/js/admin/loginAdmin.js"></script>
</html>