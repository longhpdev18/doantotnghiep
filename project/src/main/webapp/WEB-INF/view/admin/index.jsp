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
		<jsp:include page="navigation.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="topbar.jsp"></jsp:include>
			<div class="main-wp">
			<div class="main-left">
		
				<!-- CARD BOX -->
				<jsp:include page="cardBox.jsp"></jsp:include>
				<div class="recent">
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
						<div class="manage-customer-heading">
							<div class="customer-heading-left w-50">Khách hàng</div>
							<div class="customer-heading-right">
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
								<td>Ảnh</td>
								<td>Tên</td>
								<td></td>
							</tr>
							<tr>
								<td>
									<div class="imgBx">
										<img
											src="https://wall.vn/wp-content/uploads/2019/11/hinh-anh-phong-canh-da-lat-3.jpg"
											alt="">
									</div>
								</td>
								<td>
									<h4>Hoàng Phi Long</h4>
									<p>Hồ Chí Minh</p>
								</td>
								<td class="tbicon"><a href=""> <ion-icon
											name="phone-portrait"></ion-icon>
								</a> <a href=""> <ion-icon name="chatbubbles"></ion-icon>
								</a></td>
							</tr>
							<tr>
								<td>
									<div class="imgBx">
										<img
											src="https://wall.vn/wp-content/uploads/2019/11/hinh-anh-phong-canh-da-lat-3.jpg"
											alt="">
									</div>
								</td>
								<td>
									<h4>Hoàng Phi Long</h4>
									<p>Hồ Chí Minh</p>
								</td>
								<td class="tbicon"><a href=""> <ion-icon
											name="phone-portrait"></ion-icon>
								</a> <a href=""> <ion-icon name="chatbubbles"></ion-icon>
								</a></td>
							</tr>
							<tr>
								<td>
									<div class="imgBx">
										<img
											src="https://wall.vn/wp-content/uploads/2019/11/hinh-anh-phong-canh-da-lat-3.jpg"
											alt="">
									</div>
								</td>
								<td>
									<h4>Hoàng Phi Long</h4>
									<p>Hồ Chí Minh</p>
								</td>
								<td class="tbicon"><a href=""> <ion-icon
											name="phone-portrait"></ion-icon>
								</a> <a href=""> <ion-icon name="chatbubbles"></ion-icon>
								</a></td>
							</tr>
							<tr>
								<td>
									<div class="imgBx">
										<img
											src="https://wall.vn/wp-content/uploads/2019/11/hinh-anh-phong-canh-da-lat-3.jpg"
											alt="">
									</div>
								</td>
								<td>
									<h4>Hoàng Phi Long</h4>
									<p>Hồ Chí Minh</p>
								</td>
								<td class="tbicon"><a href=""> <ion-icon
											name="phone-portrait"></ion-icon>
								</a> <a href=""> <ion-icon name="chatbubbles"></ion-icon>
								</a></td>
							</tr>
							<tr>
								<td>
									<div class="imgBx">
										<img
											src="https://wall.vn/wp-content/uploads/2019/11/hinh-anh-phong-canh-da-lat-3.jpg"
											alt="">
									</div>
								</td>
								<td>
									<h4>Hoàng Phi Long</h4>
									<p>Hồ Chí Minh</p>
								</td>
								<td class="tbicon"><a href=""> <ion-icon
											name="phone-portrait"></ion-icon>
								</a> <a href=""> <ion-icon name="chatbubbles"></ion-icon>
								</a></td>
							</tr>
						</table>
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

<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>


</html>