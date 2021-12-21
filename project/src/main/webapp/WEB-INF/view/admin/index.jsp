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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
</head>

<body>
	<div class="container">


		<div class="statistic blur-dark">
			<div class="statistic-customer">
				<div class="statistic-headding">
					<h1 class="statistic-title">
						Khách hàng <span class="statistic-customer-count">${kh.size()}</span>
					</h1>
					<div class="btn-statistic-close">
						<i class="fas fa-times"></i>
					</div>

				</div>
				<div class="statistic-customer-list">
				<c:forEach var="item" items="${kh}" varStatus="rowCounter1">
					<li class="statistic-customer-list__item">
						<div class="statistic-customer-list__item-col id">
							<div class="statistic-customer-list__item-title">Mã khách
								hàng</div>
							<div class="statistic-customer-list__item-value">${item.makh }</div>
						</div>
						<div class="statistic-customer-list__item-col fullname">
							<div class="statistic-customer-list__item-title">Họ và tên</div>
							<div class="statistic-customer-list__item-value">${item.fullname }</div>
						</div>
						<div class="statistic-customer-list__item-col count-order">
							<div class="statistic-customer-list__item-title">Tổng đơn
								đã mua</div>
								<c:set var="secCount" value="0" scope="page" />
							<div class="statistic-customer-list__item-value">
							<c:forEach var="hd" items="${hd}" varStatus="rowCounter1">
							<c:if test="${hd.makh==item.makh }">
								<c:set var="secCount" value="${secCount + 1}" scope="page"/>
								</c:if>
								</c:forEach>
								${secCount}
           					</div>
						</div> <a href="#" class="statistic-customer-list__item-col detail">
							Chi tiết <i class="fas fa-chevron-right"></i>
					</a>
					</li>
					</c:forEach>
				</div>
			</div>

			<div class="statistic-order">
				<div class="statistic-headding">
					<h1 class="statistic-title">
						Tổng đơn <span class="statistic-order-count">${hd.size()}</span>
					</h1>
					<div class="btn-statistic-close">
						<i class="fas fa-times"></i>
					</div>
				</div>
				<div class="statistic-order-list">
					<c:forEach var="hd" items="${hd}">
						<li class="statistic-order-list__item">
							<!-- <div class="statistic-order-list__item-col no">
								<div class="statistic-order-list__item-title">Số thứ tự</div>
								<div class="statistic-order-list__item-value">1</div>
							</div> -->
							<div class="statistic-order-list__item-col id">
								<div class="statistic-order-list__item-title">Mã đơn hàng</div>
								<div class="statistic-order-list__item-value">
									${hd.mahd}</div>
							</div>
							<div class="statistic-order-list__item-col date">
								<div class="statistic-order-list__item-title">Ngày đặt
									hàng</div>
								<div class="statistic-order-list__item-value">${hd.ngaymua}</div>
							</div>
							<div class="statistic-order-list__item-col id">
								<div class="statistic-order-list__item-title">Doanh thu</div>
								<div class="statistic-order-list__item-value">${hd.tongtien}</div>
							</div> <a href="#" class="statistic-order-list__item-col detail">
								Chi tiết <i class="fas fa-chevron-right"></i>
						</a>
						</li>
					</c:forEach>
				</div>
			</div>

			<div class="statistic-order-onweek">
				<div class="statistic-headding">
					<h1 class="statistic-title">
						Đơn hàng trong tuần <span class="statistic-order-onweek-count">25</span>
					</h1>
					<div class="btn-statistic-close">
						<i class="fas fa-times"></i>
					</div>
				</div>
				<div class="statistic-order-onweek-list">
				
					<li class="statistic-order-onweek-list__item">
						<div class="statistic-order-onweek-list__item-col no">
							<div class="statistic-order-onweek-list__item-title">Số thứ
								tự</div>
							<div class="statistic-order-onweek-list__item-value">1</div>
						</div>
						<div class="statistic-order-onweek-list__item-col id">
							<div class="statistic-order-onweek-list__item-title">Mã đơn
								hàng</div>
							<div class="statistic-order-onweek-list__item-value">
								ABCDE1002200</div>
						</div>
						<div class="statistic-order-onweek-list__item-col date">
							<div class="statistic-order-onweek-list__item-title">Ngày
								đặt hàng</div>
							<div class="statistic-order-onweek-list__item-value">16:00
								18-12-2021</div>
						</div>
						<div class="statistic-order-onweek-list__item-col fullname">
							<div class="statistic-order-onweek-list__item-title">Tên
								khách hàng</div>
							<div class="statistic-order-onweek-list__item-value">Hoàng
								Phi Long</div>
						</div>
						<div class="statistic-order-onweek-list__item-col turnover">
							<div class="statistic-order-onweek-list__item-title">Doanh
								thu đơn hàng</div>
							<div class="statistic-order-onweek-list__item-value">199$</div>
						</div>
						<div class="statistic-order-onweek-list__item-col status">
							<div class="statistic-order-onweek-list__item-title">Trạng
								thái</div>
							<div class="statistic-order-onweek-list__item-value">Đã
								hoàn thành</div>
						</div> <a href="#" class="statistic-order-onweek-list__item-col detail">
							Chi tiết <i class="fas fa-chevron-right"></i>
					</a>
					</li>
				</div>
			</div>

			<div class="statistic-turnover">
				<div class="statistic-headding">
					<h1 class="statistic-title">Doanh thu</h1>
					<div class="btn-statistic-close">
						<i class="fas fa-times"></i>
					</div>
				</div>
				<div class="statistic-turnover-content">
					<div class="statistic-turnover-item capital">
						<div class="statistic-turnover__item-title">Tổng vốn</div>
						<div class="statistic-turnover__item-value">15987$</div>
					</div>
					<div class="statistic-turnover-item interest">
						<div class="statistic-turnover__item-title">Tổng lãi</div>
						<div class="statistic-turnover__item-value">5987$</div>
					</div>
					<div class="statistic-turnover-item other">
						<div class="statistic-turnover__item-title">Chi phí khác</div>
						<div class="statistic-turnover__item-value">987$</div>
					</div>
				</div>
			</div>
		</div>


		<jsp:include page="navigation.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="topbar.jsp"></jsp:include>



			<div class="main-wp">
				<div class="main-left">


					<!-- thống kê -->

					<!-- thống kê -->

					<!-- CARD BOX -->
					<jsp:include page="cardBox.jsp"></jsp:include>
					<div class="recent">
						<div class="order-update blur-dark">
							<form class="order-update-wp">
								<div class="order-update-heading">
									<div class="order-update-orderid">
										<p>Mã ĐH:</p>
										<span id="maHD"></span>
									</div>
									<div class="order-update-title">Cập nhật đơn hàng</div>

									<div class="order-update-date">
										<p>Ngày đặt:</p>
										<span id="Date">08-11-2022</span>
									</div>
								</div>
								<div class="order-update-content">
									<div class="order-form-group">
										<label for="fullname">Họ và tên:</label> <input id="Name"
											type="text" name="fullname" id="fullname"
											placeHolder="Nhập họ và tên" />
									</div>
									<div class="order-form-group">
										<label for="phone">Số điện thoại:</label> <input id="Phone"
											type="number" placeHolder="Nhập số điện thoại" />
									</div>
									<div class="order-form-group">
										<label for="address">Địa chỉ</label> <input type="text"
											name="address" id="Address" placeHolder="Nhập địa chỉ" />
									</div>
									<div class="order-form-group">
										<label for="status">Trạng thái:</label> <select id="Status">
											<option>Đã nhận đơn</option>
											<option>Đang chuẩn bị</option>
											<option>Đang vận chuyển</option>
											<option>Đang giao hàng</option>
											<option>Đã giao hàng</option>
											<option>Đã hủy</option>
										</select>
									</div>
								</div>
								<div class="order-update-button">
									<button id="updateHD" class="order-update-update">Cập
										nhật</button>
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
											<form action="./excelHD" method="get">
												<button class="export-file bnt-">
													<i class="fas fa-file-export"></i>Xuất file
												</button>
											</form>
										</div>
									</div>
									<div class="pagination">
										<div class="pagination-left">
											<div class="action-content blur-white-md"></div>
										</div>
										<div class="pagination-right">
											<button class="btn-prev">
												<i class="fas fa-angle-left"></i>
											</button>
											<span id="countPage">${pageCount.getCount()+1}</span>
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
													<button onclick="editHD(${item.mahd})" class="btn-showEdit">
														<i class="far fa-edit"></i>
														<p>Sửa</p>
													</button>
													<form action="./order-detail=${item.mahd}" method="get">
														<button class="btn-delete">
															<i class="fa-solid fa-eye"></i>
															<p>Xem</p>
														</button>
													</form>
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
								<c:forEach var="top8kh" items="${listkhtop}">
									<li class="recentCustomer-item">
										<div class="recentCustomer-image">
											<img
												src="https://img.lovepik.com/photo/50111/4793.jpg_wh860.jpg" />
										</div>
										<div class="recentCustomer-detail">
											<div class="recentCustomer-detail-name">${top8kh.fullname}</div>
											<div class="recentCustomer-detail-username">
												${top8kh.tendangnhap}</div>
											<div class="recentCustomer-detail-id">
												Mã khách hàng <span>${top8kh.makh}</span>
											</div>
										</div>
										<div class="recentCustomer-icon">
											<i class="fas fa-angle-right"></i>
										</div>
									</li>
								</c:forEach>
								<c:forEach var="item" items="${kh}">
								<li class="recentCustomer-item">
									<div class="recentCustomer-image">
										<img
											src="https://i.vietgiaitri.com/2018/11/26/cung-ngam-hinh-anh-nhung-nguoi-dep-co-khuon-mat-mang-ti-le-can-d-103d74.jpg" />
									</div>
									<div class="recentCustomer-detail">
										<div class="recentCustomer-detail-name">${item.fullname }</div>
										<div class="recentCustomer-detail-username">
											${item.email }</div>
										<div class="recentCustomer-detail-id">
											Mã khách hàng <span>${item.makh }</span>
										</div>
									</div>
									<div class="recentCustomer-icon">
										<i class="fas fa-angle-right"></i>
									</div>
								</li>
								</c:forEach>
								
							</ul>
							<ul class="recentCustomer-content">
							
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
										<div class="target-content-percent">${hd.size()/10 }%</div>
									</div>
									<div class="target-content-bottom" >
										<div class="target-processbar" >
											<div class="target-processbar-load order" style="width: ${hd.size()/10 }%;"></div>
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
										<div class="target-content-percent">${kh.size()}%</div>
									</div>
									<div class="target-content-bottom">
										<div class="target-processbar">
											<div class="target-processbar-load customer" style="width: ${kh.size()}%;"></div>
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
										<div class="target-content-title">Doanh thu (đạt 100.000.000
											VNĐ)</div>
										<div class="target-content-percent">${doanhthu/1000000 }%</div>
									</div>
									<div class="target-content-bottom">
										<div class="target-processbar">
											<div class="target-processbar-load revenue"  style="width: ${doanhthu/1000000 }%;"></div>
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>


</html>