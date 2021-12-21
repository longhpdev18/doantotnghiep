<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8" />

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- STYLE CSS -->
<link rel="stylesheet" href="./../assets/css/style.css" />
<!-- UTILITIES CSS -->
<link rel="stylesheet" href="./../assets/css/utilities.css" />
<link rel="stylesheet" href="./../assets/css/responsive.css">

<title>Thông tin</title>



<!-- MY JS -->

<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />

<!-- FLAT-ICON -->
<link rel=”stylesheet”
	href=”https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css” />


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<div class="container" style="width: 100%">
		<jsp:include page="./../../home/header.jsp"></jsp:include>
	</div>
	<div class="profile">
		<div class="profile-wp">

			<div class="profile-left">
				<div class="profile-image">
					<img src="./../assets/images/profile/${hinh}"
						alt="">
					<div class="veri-account">
					<form action="" class="fprofile" id="fprofile"
							enctype="multipart/form-data">
						<label for="upload-photo">Chọn ảnh</label>
						<input type="file" name="fileKH" id="upload-photo" accept="image/*"/>
						</form>
					</div>
				</div>
				<p class="profile-id" id="profile-id" value="${maKH}">${maKH}</p>
			</div>
			<div class="profile-right">
				<h1 class="profile-title">Thông tin cá nhân</h1>
				<form action="">
					<div class="form-group-2">
						<div class="form-group">
							<label for="username"> Tên đăng nhập: </label> <input type="text"
								name="username" id="usernameProfile" class="txtUsername"
								value="${tendangnhap}" readonly>
						</div>
						<div class="form-group">
							<label for="password"> Mật khẩu: </label> <input type="password"
								name="password" id="passwordProfile" class="txtPassword"
								value="${matkhau}" placeholder="Mật khẩu tài khoản của bạn">
						</div>
					</div>
					<div class="form-group-2">
						<div class="form-group">
							<label for="fullname"> Họ và tên: </label> <input type="text"
								name="fullname" id="fullnameProfile" class="txtFullname"
								value="${fullname}">
						</div>
						<div class="form-group">
							<label for="phone"> Số điện thoại: </label> <input type="number"
								name="phone" id="phoneProfile" class="txtPhone"
								value="${sodienthoai}">
						</div>
					</div>
					<div class="form-group-2">
						<div class="form-group">
							<label for="birthday"> Ngày sinh: </label> <input type="date"
								name="birthday" id="birthdayProfile" class="txtBirthday"
								value="${ngaysinh}">
						</div>
						<div class="form-group">
							<label for="genders"> Giới tính: </label>
							<div class="genders">
								<div class="gender-select">
									<c:if test="${gioitinh==false}">
										<span class="gender-value" id="gender-valueProfile">
											Nam </span>
									</c:if>
									<c:if test="${gioitinh==true}">
										<span class="gender-value" id="gender-valueProfile"> Nữ

										</span>
									</c:if>
									<div class="gender-button">
										<i class="fas fa-chevron-down"></i>
									</div>
								</div>
								<div class="gender-list">
									<div class="gender-option">Nam</div>
									<div class="gender-option">Nữ</div>
								</div>
							</div>
						</div>
					</div>
					<div class="form-group-1">
						<div class="form-group">
							<label for="address"> Địa chỉ: </label> <input type="text"
								name="address" id="addressProfile" class="txtAddress"
								value="${diachi}">
						</div>
					</div>
					<div class="form-group-1">
						<div class="form-group">
							<label for="email"> Email: </label> <input type="mail"
								name="email" id="emailProfile" class="txtEmail" value="${email}">
						</div>
					</div>
					<!-- PROFILE-BUTTON Khi đã click sửa -->
					<div class="profile-button">
						<button class="btn btn-primary btn-save mr-10 rounded-8 ">Chỉnh
							sửa</button>
						<button class="btn btn-light rounded-8 btn-cancle">Hủy</button>
					</div>

					<!-- PROFILE-BUTTON Khi chưa click sửa -->
					<!-- <div class="profile-button">
                                <button class="btn btn-primary btn-edit rounded-8">Chỉnh sửa</button>
                            </div> -->

				</form>
			</div>

		</div>
	</div>
	<jsp:include page="./../../home/footer.jsp"></jsp:include>
	</div>
</body>

<!-- MY JS -->
<script src="./../assets/js/modules.js"></script>
<script src="./../assets/js/app.js"></script>
<script src="./../assets/js/login.js"></script>
<script src="./../assets/js/profile.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<!-- JQUERY -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>