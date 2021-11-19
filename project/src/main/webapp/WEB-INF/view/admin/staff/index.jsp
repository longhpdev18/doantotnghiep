<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin</title>
<!--CSS-->
<!--     <link rel="stylesheet" href="./../assets/css/admin/index.css">
    <link rel="stylesheet" href="./../assets/css/admin/listProduct.css">
    <link rel="stylesheet" href="./../assets/css/admin/product.css">
   
    <link rel="stylesheet" href="./../assets/css/admin/2.css"> -->
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
</head>
<body>
	<div class="container">
		<jsp:include page="./../navigation.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="./../topbar.jsp"></jsp:include>
			<div class="manage-staff">
				<div class="staff-update blur-dark">
					<div class="staff-update-wp">
						<div class="staff-update-heading">Cập nhật thông tin nhân
							viên</div>
						<form action="" class="staff-update-form">
							<div class="form-group">
								<label for="fullname">Họ và tên</label> <input type="text"
									name="fullname" id="fullname" placeholder="Nhập họ và tên"
									class="fullname" required>
							</div>
							<div class="form-group">
								<label for="phone">Số điện thoại</label> <input type="number"
									name="phone" id="phone" placeholder="Nhập số điện thoại"
									class="phone" required>
							</div>
							<div class="form-group">
								<label for="birthday">Ngày sinh</label> <input type="date"
									name="birthday" id="birthday" placeholder="Chọn ngày sinh"
									class="birthday" required>
							</div>
							<div class="form-group">
								<label for="gender">Giới tính</label>
								<div class="form-group-gender">
									<div class="gender-item">
										<input type="radio" name="gender" id="male" class="gender">
										<label for="male">Nam</label>
									</div>
									<div class="gender-item">
										<input type="radio" name="gender" id="female" class="gender">
										<label for="female">Nữ</label>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="email">Địa chỉ</label> <input type="email"
									name="email" id="email" placeholder="Nhập email" class="email"
									required>
							</div>
							<div class="form-group">
								<label for="address">Địa chỉ</label> <input type="text"
									name="address" id="address" placeholder="Nhập địa chỉ"
									class="address" required>
							</div>
							<div class="form-group">
								<label for="position">Chức vụ</label> <input type="text"
									name="position" id="position" class="position"
									value="Nhân viên" readonly>
							</div>
							<div class="form-group">
								<label for="image">hình ảnh</label> <input type="file"
									name="image" id="image" class="image" accept="image/*">
							</div>
							<div class="update-form-button">
								<button class="update-button-edit">Chỉnh sửa</button>
								<button class="update-button-cancel">Hủy</button>
							</div>
						</form>
					</div>
				</div>

				<div class="manage-staff-wp">
					<div class="manage-staff-heading">
						<div class="staff-heading-left">Danh sách nhân viên</div>
						<div class="staff-heading-center">
							<div class="searchbox">
								<input type="text" class="search-input"
									placeholder="Nhập tên nhân viên, id nhân viên">
								<button class="search-button">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
						<div class="staff-heading-right">
							<button class="btn-export">
								<i class="fas fa-download"></i>
								<p>Export</p>
							</button>
							<div class="pagination">
								<div class="pagination-left">
									<span>1</span> <i class="fas fa-circle"></i> <span>10</span>
								</div>
								<div class="pagination-right">
									<button class="btn-prev">
										<i class="fas fa-angle-left"></i>
									</button>
									<button class="btn-next">
										<i class="fas fa-angle-right"></i>
									</button>
								</div>
							</div>
						</div>
					</div>
					<ul class="list-staff">
						<c:forEach var="item" items="${listNV.content}">
						<li class="staff-item">
							<div class="staff-id">${item.manv}</div>
							<div class="staff-image">
								<img
									src="https://upanh123.com/wp-content/uploads/2020/12/hinh-nen-cute05.jpg"
									alt="">
							</div>
							<div class="staff-account">
								<div class="staff-account-username">${item.tendangnhap}</div>
								<div class="staff-account-password">${item.matkhau}</div>
							</div>
							<div class="staff-information">
								<div class="staff-information-fullname">${item.fullname}</div>
								<div class="staff-information-gender">${item.gioitinh}</div>
								<div class="staff-information-birthday">${item.ngaysinh}</div>
							</div>
							<div class="staff-contact">
								<div class="staff-phone">${item.sodienthoai}</div>
								<div class="staff-email">${item.email}</div>
								<div class="staff-address">${item.diachi}</div>
							</div>

							<div class="staff-position">
								<span class="staff-seller">${item.chucvu}</span>
							</div>
							<div class="staff-action">
								<button class="staff-button-edit">
									<i class="fas fa-pencil-alt"></i>
								</button>
								<button class="staff-button-delete">
									<i class="far fa-trash-alt"></i>
								</button>
							</div>
						</li>
						</c:forEach>
						
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../assets/js/admin/testAPI.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>
</html>