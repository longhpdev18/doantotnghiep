<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>
<link rel="shortcut icon" href="../../assets/images/logo.png">
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin</title>
<!--CSS-->
<link rel="stylesheet" href="./../assets/css/admin/style.css">
<link rel="stylesheet" href="./../assets/css/admin/unilities.css">
<link rel="stylesheet" href="./../assets/css/admin/responsive.css">


<!-- BOXICON -->
<script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<!--LINE AWSOME-->
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
</head>
<body>
	<div class="container">
		<jsp:include page="./../navigation.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="./../topbar.jsp"></jsp:include>
			<!--PROFILE-->
			<div class="content_profile">
				<div class="content__container">
					<div class="profile">
						<div class="profile-content">
							<div class="profile-left">
								<div class="profile-image">
									<img
										src="./../assets/images/profile/${hinh}"
										alt="">
									<div class="veri-account">
										<i class="fas fa-check"></i>
									</div>

								</div>
								<p class="profile-id">
									# <label id="MaNV">${maNV}</label>
								</p>
							</div>
							<div class="profile-right">
								<h1 class="profile-title">Thông tin cá nhân</h1>
								<form action="">
									<div class="form-group flex-row">
										<div class="form-group-col2 flex-col">
											<label for="fullname"> Tên đăng nhập: </label> <input
												type="text" name="fullname" id="usernameProfile"
												class="txtFullname" value="${tendangnhap}" readonly>
										</div>
										<div class="form-group-col2 flex-col ml-m">
											<label for="password"> Mật khẩu: </label> <input
												type="password" name="password" id="passwordProfile"
												class="txtPassword" value="${matkhau}">
										</div>
									</div>
									<div class="form-group flex-row">
										<div class="form-group-col2 flex-col">
											<label for="fullname"> Họ và tên: </label> <input type="text"
												name="fullname" id="fullnameProfile" class="txtFullname"
												value="${fullname}">
										</div>
										<div class="form-group-col2 flex-col ml-m">
											<label for="phone"> Số điện thoại: </label> <input
												type="number" name="phoneProfile" id="phone"
												class="txtPhone" value="${sodienthoai}">
										</div>
									</div>
									<div class="form-group flex-row">
										<div class="form-group-col2 flex-col">
											<label for="birthday"> Ngày sinh: </label> <input type="date"
												name="birthday" id="birthdayProfile" class="txtBirthday"
												value="${ngaysinh}">
										</div>
										<div class="form-group-col2 flex-col ml-m">
											<label for="phone"> Giới tính: </label> <select id="genders"
												class="genders">
												<c:if test="${gioitinh == true}">
													<option value="1">Nam</option>
													<option value="0">Nữ</option>
												</c:if>
												<c:if test="${gioitinh == false}">
													<option value="0">Nữ</option>
													<option value="1">Nam</option>
												</c:if>


											</select>
										</div>
									</div>
									<div class="form-group">
										<label for="Địa chỉ"> Địa chỉ: </label> <input type="text"
											name="address" id="address" class="txtAddress"
											value="${diachi}">
									</div>
									<div class="form-group">
										<label for="email"> Email: </label> <input type="email"
											name="email" id="email" class="txtEmail" value="${email}">
									</div>

									<!-- PROFILE-BUTTON Khi đã click sửa -->
									<div class="profile-button">
										<button id="btn-save"
											class="btn btn-primary btn-save mr-10 rounded-8">Chỉnh
											sửa</button>
										<button class="btn btn-light rounded-8">Hủy</button>
									</div>

									<!-- PROFILE-BUTTON Khi chưa click sửa -->
									<!-- <div class="profile-button">
                                        <button class="btn btn-primary btn-edit rounded-8">Chỉnh sửa</button>
                                    </div> -->

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/profile.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>
</html>