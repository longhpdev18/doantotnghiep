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

				<div class="manage-staff-wp">
										
					<div class="add-customer blur-dark">
						<form class="form-add-customer">
							<div class="form-heading center">Thêm khách hàng</div>
							<div class="form-content">
								<div class="form-group">
									<label>Tên tài khoản</label>
									<input id="userKH" type="text" placeholder="Nhập tên tài khoản">
								</div>
								<div class="form-group">
									<label>Mật khẩu</label>
									<input id="passKH" type="password" placeholder="Mật khẩu">
								</div>
								<div class="form-group">
									<label>Họ và tên</label>
									<input id="fullname" type="text" placeholder="Họ và tên">
								</div>
								<div class="form-group">
									<label>Giới tính</label>
									<select id="genders">
										<option  value="0">Nam</option>
										<option  value="1">Nữ</option>
									</select>
								</div>
								<div class="form-group">
									<label>Ngày sinh</label>
									<input id="birthday" type="date">
								</div>
								<div class="form-group address">
									<label>Địa chỉ</label>
									<input id="address" type="text" placeholder="Thêm địa chỉ">
								</div>
								<div class="form-group ">
									<label>Email</label>
									<input id="emailKH" type="mail" placeholder="Thêm email">
								</div>

								<div class="form-group">
									<label>Số điện thoại</label>
									<input id="phoneKH" type="number" placeholder="Số điện thoại">
								</div>
								<div class="form-group">
									<label>Hình ảnh</label>
									<input id="fileKH" type="file" accept="image/*">
								</div>
								<div class="form-group">
									<label>Trạng thái</label>
									<select id="active">
										<option value="1">Đã kích hoạt</option>
										<option value="0" selected>Chưa kích hoạt</option>
									</select>
								</div>
								<div class="form-button">
									<button id="add-customer" class="add-customer-button">Thêm khách hàng</button>
									<button class="cancel-customer-button">Hủy</button>
								</div>
							</div>
						</form>
					</div>
					
					<div class="edit-staff blur-dark">
						<form class="form-edit-staff">
							<div class="form-heading center">Sửa khách hàng</div>
							<div class="form-content">
								<div class="form-group">
									<label>Tên tài khoản</label>
									<input type="text" placeholder="Nhập tên tài khoản">
								</div>
								<div class="form-group">
									<label>Mật khẩu</label>
									<input type="password" placeholder="Mật khẩu">
								</div>
								<div class="form-group">
									<label>Họ và tên</label>
									<input type="text" placeholder="Họ và tên">
								</div>
								<div class="form-group">
									<label>Giới tính</label>
									<select>
										<option>Nam</option>
										<option>Nữ</option>
									</select>
								</div>
								<div class="form-group">
									<label>Ngày sinh</label>
									<input type="date">
								</div>
								<div class="form-group address">
									<label>Địa chỉ</label>
									<input type="text" placeholder="Thêm địa chỉ">
								</div>
								<div class="form-group ">
									<label>Email</label>
									<input type="mail" placeholder="Thêm email">
								</div>

								<div class="form-group">
									<label>Số điện thoại</label>
									<input type="number" placeholder="Số điện thoại">
								</div>
								<div class="form-group">
									<label>Hình ảnh</label>
									<input type="file" accept="image/*">
								</div>
								<div class="form-group">
									<label>Trạng thái</label>
									<select>
										<option>Đã kích hoạt</option>
										<option selected>Chưa kích hoạt</option>
									</select>
								</div>
								<div class="form-button">
									<button class="edit-staff-button">Sửa khách hàng</button>
									<button class="cancel-customer-button">Hủy</button>
								</div>
							</div>
						</form>
					</div>
				
				
				
				
				
				
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
							<div class="btn-showAction">
							<p>Hành động</p><i class="fas fa-angle-down"></i>
							<div class="action-content blur-white-md">
							<button class="add-item"><i class="fas fa-user-plus"></i>  Thêm nhân viên</button>
								<form action="excelSP" method="get">
									<button class="export-file"><i class="fas fa-file-export"></i>Xuất file</button>		
								</form>
							</div>
						</div>
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