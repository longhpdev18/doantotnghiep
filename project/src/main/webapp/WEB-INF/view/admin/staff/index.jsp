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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
</head>
<body>
	<div class="container">
		<jsp:include page="./../navigation.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="./../topbar.jsp"></jsp:include>
			<div class="manage-staff">

				<div class="manage-staff-wp">

					<div class="add-customer blur-dark">
						<form class="form-add-customer fAdd-nv" id="fAdd-nv">
							<div class="form-heading center">Thêm nhân viên</div>
							<div class="form-content">
								<div class="form-group">
									<label>Tên tài khoản</label> <input id="userNV" type="text"
										placeholder="Nhập tên tài khoản">
								</div>
								<div class="form-group">
									<label>Mật khẩu</label> <input id="passNV" type="password"
										placeholder="Mật khẩu">
								</div>
								<div class="form-group">
									<label>Họ và tên</label> <input id="nameNV" type="text"
										placeholder="Họ và tên">
								</div>
								<div class="form-group">
									<label>Giới tính</label> <select id="genders">
										<option value="0">Nam</option>
										<option value="1">Nữ</option>
									</select>
								</div>
								<div class="form-group">
									<label>Ngày sinh</label> <input id="birthdayNV" type="date">
								</div>
								<div class="form-group address">
									<label>Địa chỉ</label> <input id="addressNV" type="text"
										placeholder="Thêm địa chỉ">
								</div>
								<div class="form-group ">
									<label>Email</label> <input id="emailNV" type="mail"
										placeholder="Thêm email">
								</div>

								<div class="form-group">
									<label>Số điện thoại</label> <input id="phoneNV" type="number"
										placeholder="Số điện thoại">
								</div>
								<div class="form-group">
									<label>Hình ảnh</label> <input id="fileNV" name="fileNV"
										type="file" accept="image/*">
								</div>
								<div class="form-group">
									<label>Chức vụ</label> <select id="chucvu">
										<option value="1">Admin</option>
										<option value="0" selected>Nhân viên</option>
									</select>
								</div>
								<div class="form-button">
									<button id="add-staff" class="add-customer-button">Thêm
										nhân viên</button>
									<button class="cancel-customer-button">Hủy</button>
								</div>
							</div>
						</form>
					</div>

					<div class="edit-staff blur-dark">
						<form class="form-edit-staff" name="fupdate-nv" id="fupdate-nv">
							<div class="form-heading center">Sửa nhân viên</div>
							<div class="form-content">
								<div class="form-group">
									<label>Mã nhân viên </label> <input id="udID" type="text"
										readonly="readonly">
								</div>
								<div class="form-group">
									<label>Tên tài khoản</label> <input id="udUser" type="text"
										placeholder="Nhập tên tài khoản">
								</div>
								<div class="form-group">
									<label>Mật khẩu</label> <input id="udPass" type="password"
										placeholder="Mật khẩu">
								</div>
								<div class="form-group">
									<label>Họ và tên</label> <input id="udName" type="text"
										placeholder="Họ và tên">
								</div>
								<div class="form-group">
									<label>Giới tính</label> <select id="udGT">
										<option value="0">Nam</option>
										<option value="1">Nữ</option>
									</select>
								</div>
								<div class="form-group">
									<label>Ngày sinh</label> <input id="udDate" type="date">
								</div>
								<div class="form-group address">
									<label>Địa chỉ</label> <input id="udAddress" type="text"
										placeholder="Thêm địa chỉ">
								</div>
								<div class="form-group ">
									<label>Email</label> <input id="udMAil" type="mail"
										placeholder="Thêm email">
								</div>

								<div class="form-group">
									<label>Số điện thoại</label> <input id="udPhone" type="number"
										placeholder="Số điện thoại">
								</div>
								<div class="form-group">
									<label>Hình ảnh</label> <input id="UDfileNV" name="UDfileNV"
										type="file" accept="image/*"> <label id="lblHinh"></label>
								</div>
								<div class="form-group">
									<label>Chức vụ </label> <select id="udChucvu">
										<option value="1">Admin</option>
										<option value="0">Nhân viên</option>
									</select>
								</div>
								<div class="form-button">
									<button class="edit-staff-button" id="UpdateNV">Sửa
										nhân viên</button>
									<button class="cancel-customer-button">Hủy</button>
								</div>
							</div>
						</form>
					</div>


					<div class="manage-staff-heading">
						<div class="staff-heading-left">Danh sách nhân viên</div>
						<div class="staff-heading-center">
							<form action="./staffTimkiem">
								<div class="searchbox">
									<input type="number" id="manv"  name="manv" class="search-input"
										placeholder="Nhập id nhân viên">
									<button class="search-button">
										<i class="fas fa-search"></i>
									</button>
								</div>
							</form>
						</div>
						<div class="staff-heading-right">
							<c:if test="${chucVuNV == true}">
								<div class="btn-showAction">
									<p>Hành động</p>
									<i class="fas fa-angle-down"></i>
									<div class="action-content blur-white-md">
										<button class="add-item">
											<i class="fas fa-user-plus"></i> Thêm nhân viên
										</button>
										<!-- 	<form action="excelSP" method="get">
										<button class="export-file">
											<i class="fas fa-file-export"></i>Xuất file
										</button>
									</form> -->
									</div>
								</div>
							</c:if>
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
									<img src="./../assets/images/profile/${item.hinh}" alt="">
								</div>
								<div class="staff-account">
									<div class="staff-account-username">${item.tendangnhap}</div>
									<%-- <c:if test="${chucVuNV == true}">
										<div class="staff-account-password">${item.matkhau}</div>
									</c:if> --%>
								</div>
								<div class="staff-information">
									<div class="staff-information-fullname">${item.fullname}</div>
									<div class="staff-information-gender">
										<c:if test="${item.gioitinh == true}">Nữ</c:if>
										<c:if test="${item.gioitinh == false}">Nam</c:if>
									</div>
									<div class="staff-information-birthday">${item.ngaysinh}</div>
								</div>
								<div class="staff-contact">
									<div class="staff-phone">${item.sodienthoai}</div>
									<div class="staff-email">${item.email}</div>
									<div class="staff-address">${item.diachi}</div>
								</div>

								<div class="staff-position">
									<span class="staff-seller"> <c:if
											test="${item.chucvu == false}">Nhân viên</c:if> <c:if
											test="${item.chucvu == true}">Admin</c:if>
									</span>
								</div> 
								<c:if test="${maNV == item.manv}">
										<div class="staff-action">
											<button class="staff-button-edit"
												onclick="editNV(${item.manv})">
												<i class="fas fa-pencil-alt"></i>
											</button>
										</div>
									</c:if>
								<c:if test="${chucVuNV == true}">
									<c:if test="${chucVuNV != item.chucvu}">
									
										<div class="staff-action">
											<button class="staff-button-edit"
												onclick="editNV(${item.manv})">
												<i class="fas fa-pencil-alt"></i>
											</button>
											<button class="staff-button-delete"
												onclick="delectNV(${item.manv})">
												<i class="far fa-trash-alt"></i>
											</button>
										</div>
									
									</c:if>
								</c:if>
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="../assets/js/admin/nhanvien.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>
</html>