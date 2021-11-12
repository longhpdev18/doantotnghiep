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

</head>

<body>
	<div class="container" style="width: 100%">
		<jsp:include page="./../../home/header.jsp"></jsp:include>
	</div>
	<div class="profile">
            <div class="profile-wp">
            <c:forEach var="item" items="${items}">
                <div class="profile-left">
                    <div class="profile-image">
                        <img src="https://cdn-icons-png.flaticon.com/128/3135/3135715.png" alt="">
                        <div class="veri-account">
                            <i class="fas fa-check"></i>
                        </div>
                    </div>
                    <p class="profile-id">#000${item.makh}</p>
                </div>
                <div class="profile-right">
                    <h1 class="profile-title">Thông tin cá nhân</h1>
                    <form action="">
                        <div class="form-group-2">
                            <div class="form-group">
                                <label for="username">
                                    Tên đăng nhập:
                                </label>
                                <input type="text" name="username" id="username" class="txtUsername" value="${item.tendangnhap}"
                                    readonly>
                            </div>
                            <div class="form-group">
                                <label for="password">
                                    Mật khẩu:
                                </label>
                                <input type="password" name="password" id="password" class="txtPassword"
                                    value="${item.matkhau}" placeholder="Mật khẩu tài khoản của bạn">
                            </div>
                        </div>
                        <div class="form-group-2">
                            <div class="form-group">
                                <label for="fullname">
                                    Họ và tên:
                                </label>
                                <input type="text" name="fullname" id="fullname" class="txtFullname"
                                    value="${item.fullname}">
                            </div>
                            <div class="form-group">
                                <label for="phone">
                                    Số điện thoại:
                                </label>
                                <input type="number" name="phone" id="phone" class="txtPhone" value="${item.sodienthoai}">
                            </div>
                        </div>
                        <div class="form-group-2">
                            <div class="form-group">
                                <label for="birthday">
                                    Ngày sinh:
                                </label>
                                <input type="date" name="birthday" id="birthday" class="txtBirthday" value="${item.ngaysinh}">
                            </div>
                            <div class="form-group">
                                <label for="genders">
                                    Giới tính:
                                </label>
                                <div class="genders">
                                    <div class="gender-select">
                                        <span class="gender-value" id="gender-value">Nam</span>
                                        <div class="gender-button">
                                            <i class="fas fa-chevron-down"></i>
                                        </div>
                                    </div>
                                    <div class="gender-list">
                                    <c:if test="${item.gioitinh=true}">
                                        <div class="gender-option">Nam</div>
                                        </c:if>
                                        <c:if test="${item.gioitinh=false}">
                                        <div class="gender-option">Nữ</div>
                                        </c:if>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-group-1">
                            <div class="form-group">
                                <label for="address">
                                    Địa chỉ:
                                </label>
                                <input type="text" name="address" id="address" class="txtAddress"
                                    value="${item.diachi}">
                            </div>
                        </div>
                        <div class="form-group-1">
                            <div class="form-group">
                                <label for="email">
                                    Email:
                                </label>
                                <input type="mail" name="email" id="email" class="txtEmail"
                                    value="${item.email}">
                            </div>
                        </div>
                        <!-- PROFILE-BUTTON Khi đã click sửa -->
                        <div class="profile-button">
                            <button class="btn btn-primary btn-save mr-10 rounded-8">Chỉnh sửa</button>
                            <button class="btn btn-light rounded-8">Hủy</button>
                        </div>

                        <!-- PROFILE-BUTTON Khi chưa click sửa -->
                        <!-- <div class="profile-button">
                                <button class="btn btn-primary btn-edit rounded-8">Chỉnh sửa</button>
                            </div> -->

                    </form>
                </div>
                </c:forEach>
            </div>
        </div>
	<jsp:include page="./../../home/footer.jsp"></jsp:include>
	</div>
</body>

<!-- MY JS -->
<script src="./../assets/js/starter.js"></script>
<script src="./../assets/js/modules.js"></script>
<script src="./../assets/js/app.js"></script>
<script src="./../assets/js/login.js"></script>

 <script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<!-- JQUERY -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>