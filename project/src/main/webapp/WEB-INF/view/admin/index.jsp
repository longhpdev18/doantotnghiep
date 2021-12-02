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

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
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
		<jsp:include page="navigation.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="topbar.jsp"></jsp:include>
			<div class="main-wp">
				<div class="main-left">

					<!-- CARD BOX -->
					<jsp:include page="cardBox.jsp"></jsp:include>
					<div class="recent">
						<div class="order-update blur-dark">
							<form class="order-update-wp">
								<div class="order-update-heading">
									<div class="order-update-orderid">
										<p>Mã ĐH:</p>
										<span>9999</span>
									</div>
									<div class="order-update-title">Cập nhật đơn hàng</div>

									<div class="order-update-date">
										<p>Ngày đặt:</p>
										<span>08-11-2022</span>
									</div>
								</div>
								<div class="order-update-content">
									<div class="order-form-group">
										<label for="fullname">Họ và tên:</label> <input type="text"
											name="fullname" id="fullname" placeHolder="Nhập họ và tên" />
									</div>
									<div class="order-form-group">
										<label for="phone">Số điện thoại:</label> <input type="number"
											name="" phone"" id=""
											phone"" placeHolder="Nhập số điện thoại" />
									</div>
									<div class="order-form-group">
										<label for="address">Họ và tên:</label> <input type="text"
											name="address" id="address" placeHolder="Nhập địa chỉ" />
									</div>
									<div class="order-form-group">
										<label for="status">Trạng thái:</label> <select>
											<option>Chọn trạng thái</option>
											<option>Đang chuẩn bị</option>
											<option>Đang vận chuyển</option>
											<option>Đang giao hàng</option>
											<option>Đã hủy</option>
										</select>
									</div>
								</div>
								<div class="order-update-button">
									<button class="order-update-update">Cập nhật</button>
									<button class="order-update-cancel">Hủy</button>
								</div>

							</form>
						</div>
						<div class="recentOrders">
							<div class="manage-customer-heading">
								<div class="customer-heading-left">Đơn hàng gần đây</div>
								<div class="customer-heading-center">
									<div class="searchbox">
										<input type="text" class="search-input"
											placeholder="Nhập tên sản phẩm, hoặc id đơn hàng">
										<button class="search-button">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</div>
								<div class="customer-heading-right">
									<div class="btn-showAction">
										<p>Hành động</p>
										<i class="fas fa-angle-down"></i>
										<div class="action-content blur-white-md">
											<button class="add-item">
												<i class="fas fa-user-plus"></i> Thêm nhân viên
											</button>
											<form action="./excelHD" method="get">
												<button class="export-file">
													<i class="fas fa-file-export"></i>Xuất file
												</button>
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
							<table>

								<tr>
									<!-- <td><input type="checkbox" onclick='checkUncheck(this)' > All</td> -->
									<td>Mã HĐ</td>
									<td>Mã KH</td>
									<td>Ngày Mua</td>
									<td>Tên Người Nhận</td>
									<td>Số Điện Thoại</td>
									<td>Địa Chỉ</td>
									<td>Trạng thái</td>
									<td></td>
								</tr>

								<c:forEach var="item" items="${listHD.content}">

									<tr>
										<!-- <td><input type="checkbox" name="lang" class="chkboxname" ></td> -->
										<td>${item.mahd}</td>
										<td>${item.makh}</td>
										<td>${item.ngaymua}</td>
										<td>${item.tennguoinhan}</td>
										<td>${item.sdtnguoinhan}</td>
										<td>${item.diachinguoinhan}</td>
										<td><span class="status delivered">${item.trangthai}</span></td>
										<td>
											<div class="dropdown">
												<button class="dropbtn">
													<i class="fas fa-ellipsis-h"></i>
												</button>
												<div class="dropdown-content">
													<button class="btn-showEdit">
														<i class="far fa-edit"></i>
														<p>Sửa</p>
													</button>
													<button class="btn-delete">
														<i class="far fa-trash-alt"></i>
														<p>Xóa</p>
													</button>
												</div>
											</div>
										</td>
									</tr>
								</c:forEach>
							</table>
						</div>
					</div>
				</div>
				<div class="main-right">
					<div class="recentCustomers">
						<div class="recentCustomer-heading">
							<div class="recentCustomer-title">Khách hàng gần đây</div>
							<a href="./customer" class="recentCustomer-more"> Xem thêm<i
								class="fas fa-angle-right"></i>
							</a>
						</div>
						<div class="recentCustomer-slider">
							<ul class="recentCustomer-content">
								<li class="recentCustomer-item">
									<div class="recentCustomer-image">
										<img
											src="https://img.lovepik.com/photo/50111/4793.jpg_wh860.jpg" />
									</div>
									<div class="recentCustomer-detail">
										<div class="recentCustomer-detail-name">Long Hoàng Nè</div>
										<div class="recentCustomer-detail-username">
											@longhpps09046</div>
										<div class="recentCustomer-detail-id">
											Mã khách hàng <span>8</span>
										</div>
									</div>
									<div class="recentCustomer-icon">
										<i class="fas fa-angle-right"></i>
									</div>
								</li>
								<li class="recentCustomer-item">
									<div class="recentCustomer-image">
										<img
											src="https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg" />
									</div>
									<div class="recentCustomer-detail">
										<div class="recentCustomer-detail-name">Hoàng Phi Long</div>
										<div class="recentCustomer-detail-username">
											@longhpdev18</div>
										<div class="recentCustomer-detail-id">
											Mã khách hàng <span>7</span>
										</div>
									</div>
									<div class="recentCustomer-icon">
										<i class="fas fa-angle-right"></i>
									</div>
								</li>
								<li class="recentCustomer-item">
									<div class="recentCustomer-image">
										<img
											src="https://bizweb.dktcdn.net/100/175/849/files/chup-anh-doanh-nhan-trong-studio-chuyen-nghiep-nhat-ha-noi-gia-re-bao-nhieu-tien-media-07.jpg?v=1575710139260" />
									</div>
									<div class="recentCustomer-detail">
										<div class="recentCustomer-detail-name">Hoàng Phi Long</div>
										<div class="recentCustomer-detail-username">
											@longhpdev18</div>
										<div class="recentCustomer-detail-id">
											Mã khách hàng <span>6</span>
										</div>
									</div>
									<div class="recentCustomer-icon">
										<i class="fas fa-angle-right"></i>
									</div>
								</li>
								<li class="recentCustomer-item">
									<div class="recentCustomer-image">
										<img
											src="https://img.lovepik.com/photo/50111/4793.jpg_wh860.jpg" />
									</div>
									<div class="recentCustomer-detail">
										<div class="recentCustomer-detail-name">Hoàng Phi Long</div>
										<div class="recentCustomer-detail-username">
											@longhpdev18</div>
										<div class="recentCustomer-detail-id">
											Mã khách hàng <span>5</span>
										</div>
									</div>
									<div class="recentCustomer-icon">
										<i class="fas fa-angle-right"></i>
									</div>
								</li>
							</ul>
							<ul class="recentCustomer-content">
								<li class="recentCustomer-item">
									<div class="recentCustomer-image">
										<img
											src="https://img.lovepik.com/photo/50111/4793.jpg_wh860.jpg" />
									</div>
									<div class="recentCustomer-detail">
										<div class="recentCustomer-detail-name">Long Hoàng Nè</div>
										<div class="recentCustomer-detail-username">
											@longhpps09046</div>
										<div class="recentCustomer-detail-id">
											Mã khách hàng <span>4</span>
										</div>
									</div>
									<div class="recentCustomer-icon">
										<i class="fas fa-angle-right"></i>
									</div>
								</li>
								<li class="recentCustomer-item">
									<div class="recentCustomer-image">
										<img
											src="https://img.lovepik.com/photo/50111/4793.jpg_wh860.jpg" />
									</div>
									<div class="recentCustomer-detail">
										<div class="recentCustomer-detail-name">Hoàng Phi Long</div>
										<div class="recentCustomer-detail-username">
											@longhpdev18</div>
										<div class="recentCustomer-detail-id">
											Mã khách hàng <span>3</span>
										</div>
									</div>
									<div class="recentCustomer-icon">
										<i class="fas fa-angle-right"></i>
									</div>
								</li>
								<li class="recentCustomer-item">
									<div class="recentCustomer-image">
										<img
											src="https://img.lovepik.com/photo/50111/4793.jpg_wh860.jpg" />
									</div>
									<div class="recentCustomer-detail">
										<div class="recentCustomer-detail-name">Hoàng Phi Long</div>
										<div class="recentCustomer-detail-username">
											@longhpdev18</div>
										<div class="recentCustomer-detail-id">
											Mã khách hàng <span>2</span>
										</div>
									</div>
									<div class="recentCustomer-icon">
										<i class="fas fa-angle-right"></i>
									</div>
								</li>
								<li class="recentCustomer-item">
									<div class="recentCustomer-image">
										<img
											src="https://img.lovepik.com/photo/50111/4793.jpg_wh860.jpg" />
									</div>
									<div class="recentCustomer-detail">
										<div class="recentCustomer-detail-name">Hoàng Phi Long</div>
										<div class="recentCustomer-detail-username">
											@longhpdev18</div>
										<div class="recentCustomer-detail-id">
											Mã khách hàng <span>1</span>
										</div>
									</div>
									<div class="recentCustomer-icon">
										<i class="fas fa-angle-right"></i>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="target">
						<div class="target-heading">
							<div class="target-title">Mục tiêu đề xuất</div>
							<a href="#" class="target-more"> Xem thêm<i
								class="fas fa-angle-right"></i>
							</a>
						</div>

						<div class="target-list">
							<div class="target-item">
								<div class="target-icon order">
									<i class="fas fa-boxes"></i>
								</div>
								<div class="target-content">
									<div class="target-content-top">
										<div class="target-content-title">Đơn hàng (đạt 1000 đơn
											hàng)</div>
										<div class="target-content-percent">38%</div>
									</div>
									<div class="target-content-bottom">
										<div class="target-processbar">
											<div class="target-processbar-load order"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="target-item">
								<div class="target-icon customer">
									<i class="fas fa-users"></i>
								</div>
								<div class="target-content">
									<div class="target-content-top">
										<div class="target-content-title">Khách hàng (đạt 100
											khách hàng)</div>
										<div class="target-content-percent">55%</div>
									</div>
									<div class="target-content-bottom">
										<div class="target-processbar">
											<div class="target-processbar-load customer"></div>
										</div>
									</div>
								</div>
							</div>
							<div class="target-item">
								<div class="target-icon revenue">
									<i class="fas fa-dollar-sign"></i>
								</div>
								<div class="target-content">
									<div class="target-content-top">
										<div class="target-content-title">Doanh thu (đạt 100.000
											$)</div>
										<div class="target-content-percent">82%</div>
									</div>
									<div class="target-content-bottom">
										<div class="target-processbar">
											<div class="target-processbar-load revenue"></div>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>
<!--Link icon-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="../assets/js/admin/hoaDon.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>


<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>


</html>