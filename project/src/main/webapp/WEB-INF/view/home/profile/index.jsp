<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Index</title>
<link rel="stylesheet" href="./../assets/css/style.css">
<link rel="stylesheet" href="./../assets/css/utilities.css">

<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<jsp:include page="./../../home/header.jsp"></jsp:include>
	</div>
	 <div class="content ">
        <div class="content__container">
            <div class="profile">

                <div class="profile-content">
                <c:forEach var="item" items="${items}">
                    <div class="profile-left">
                        <div class="profile-image">
                            <img src="https://cdn-icons-png.flaticon.com/128/3135/3135715.png" alt="">
                            <div class="veri-account">
                                <i class="fas fa-check"></i>
                            </div>
                            <!-- CHỜ DUYỆT -->
                            <!--                             <div class="wait-account">
                                <i class="far fa-clock"></i>
                            </div> -->
                        </div>
                        <p class="profile-id">#000${item.makh}</p>
                    </div>
                    <div class="profile-right">
                        <h1 class="profile-title">Thông tin cá nhân</h1>
                        <form action="">
                            <div class="form-group flex-row">
                                <div class="form-group-col2 flex-col">
                                    <label for="fullname">
                                        Tên đăng nhập:
                                    </label>
                                    <input type="text" name="fullname" id="fullname" class="txtFullname"
                                        value="${item.tendangnhap}" readonly>
                                </div>
                                <div class="form-group-col2 flex-col ml-m">
                                    <label for="password">
                                        Mật khẩu:
                                    </label>
                                    <input type="password" name="password" id="password" class="txtPassword"
                                       value="${item.tendangnhap}" placeholder="Mật khẩu tài khoản của bạn" readonly>
                                </div>
                            </div>
                            <div class="form-group flex-row">
                                <div class="form-group-col2 flex-col">
                                    <label for="fullname">
                                        Họ và tên:
                                    </label>
                                    <input type="text" name="fullname" id="fullname" class="txtFullname"
                                        value="${item.tendangnhap}" readonly>
                                </div>
                                <div class="form-group-col2 flex-col ml-m">
                                    <label for="phone">
                                        Số điện thoại:
                                    </label>
                                    <input type="number" name="phone" id="phone" class="txtPhone" value="${item.tendangnhap}"
                                        readonly>
                                </div>
                            </div>
                            <div class="form-group flex-row">
                                <div class="form-group-col2 flex-col">
                                    <label for="birthday">
                                        Ngày sinh:
                                    </label>
                                    <input type="date" name="birthday" id="birthday" class="txtBirthday"
                                        value="${item.tendangnhap}" readonly>
                                </div>
                                <div class="form-group-col2 flex-col ml-m">
                                    <label for="phone">
                                        Giới tính:
                                    </label>
                                    <div class="genders">
                                        <span>Nam</span>
                                        <div class="btn-showGenders">
                                            <i class="fas fa-angle-down"></i>
                                        </div>
                                        <ul class="sub-genders">
                                            <div class="rdo-gender">
                                                <input type="radio" value="male" name="gender" class="gender-option"
                                                    id="" checked>
                                                <p>Nam</p>
                                            </div>
                                            <div class="rdo-gender">
                                                <input type="radio" class="gender-option" value="female" name="gender"
                                                    id="">
                                                <p>Nữ</p>
                                            </div>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="Địa chỉ">
                                    Địa chỉ:
                                </label>
                                <input type="text" name="address" id="address" class="txtAddress"
                                    value="120 Đường Toma Khuông, KP Long Điền 1" readonly>
                            </div>
                            <div class="form-group">
                                <label for="email">
                                    Email:
                                </label>
                                <input type="email" name="email" id="email" class="txtEmail"
                                    value="longhpdev18@gmail.com" readonly>
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
        </div>
    </div>
	<jsp:include page="./../../home/footer.jsp"></jsp:include>
	</div>
</body>
<!-- BOXICON -->
<script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
<!-- MY JS -->
<script src="./../assets/js/app.js"></script>

<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>