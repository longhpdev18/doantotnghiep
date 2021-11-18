<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Quản lý khách hàng</title>

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
			<div class="page-heading" style="margin-top: 5px;">Quản lý
				khách hàng</div>
			<div class="manage-customer">
				<div class="manage-customer-wp">
					<div class="manage-customer-heading">
						<div class="customer-heading-left">Danh sách khách hàng</div>
						<div class="customer-heading-center">
							<div class="searchbox">
								<input type="text" class="search-input"
									placeholder="Nhập tên khách hàng, hoặc id khách hàng">
								<button class="search-button">
									<i class="fas fa-search"></i>
								</button>
							</div>
						</div>
						<div class="customer-heading-right">
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
					<ul class="list-customer">
						<c:forEach var="item" items="${listKH.content}">
							<li class="customer-item">
								<div class="customer-id">${item.makh}</div>
								<div class="customer-image">
									<img
										src="https://upanh123.com/wp-content/uploads/2020/12/hinh-nen-cute05.jpg"
										alt="">
								</div>
								<div class="customer-account">
									<div class="customer-account-username">${item.tendangnhap}</div>
									<div class="customer-account-password">${item.matkhau}</div>
								</div>
								<div class="customer-information">
									<div class="customer-information-fullname">${item.fullname}
									</div>
									<div class="customer-information-gender">${item.gioitinh}</div>
									<div class="customer-information-birthday">${item.ngaysinh}</div>
								</div>
								<div class="customer-contact">
									<div class="customer-phone">${item.sodienthoai}</div>
									<div class="customer-email">${item.email}</div>
									<div class="customer-address">${item.diachi}</div>
								</div>
								<div class="customer-action">
									<button class="customer-button-edit">
										<i class="fas fa-pencil-alt"></i>
									</button>
									<button class="customer-button-delete">
										<i class="far fa-trash-alt"></i>
									</button>
								</div>
							</li>
						</c:forEach>
						<!-- <li class="customer-item">
							<div class="customer-id">1</div>
							<div class="customer-image">
								<img
									src="https://toigingiuvedep.vn/wp-content/uploads/2021/06/hinh-anh-hoat-hinh-au-trung-de-thuong-cute.jpg"
									alt="">
							</div>
							<div class="customer-account">
								<div class="customer-account-username">longhpdev18</div>
								<div class="customer-account-password">long123</div>
							</div>
							<div class="customer-information">
								<div class="customer-information-fullname">Hoàng Phi Long
								</div>
								<div class="customer-information-gender">Nam</div>
								<div class="customer-information-birthday">18-05-2000</div>
							</div>
							<div class="customer-contact">
								<div class="customer-phone">0385818520</div>
								<div class="customer-email">longhpdev18@gmail.com</div>
								<div class="customer-address">Khu Phố Long Điền 1, Phường
									Long Phước, Bình Phước</div>
							</div>
							<div class="customer-action">
								<button class="customer-button-edit">
									<i class="fas fa-pencil-alt"></i>
								</button>
								<button class="customer-button-delete">
									<i class="far fa-trash-alt"></i>
								</button>
							</div>
						</li> -->
					</ul>
				</div>
			</div>
		</div>
	</div>
</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../assets/js/admin/testAPI.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>
</html>