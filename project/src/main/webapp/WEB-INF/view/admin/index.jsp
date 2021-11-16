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

<link rel="stylesheet" href="./../assets/css/admin/responsive.css">
<link rel="stylesheet" href="./../assets/css/admin/style.css">
<link rel="stylesheet" href="./../assets/css/admin/unilities.css">


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
			<!-- CARD BOX -->
			<jsp:include page="cardBox.jsp"></jsp:include>
			<div class="recent">
				<div class="recentOrders">
					<div class="cardHeader">
						<h2>Gần đây</h2>
						<a href="" class="btn-export"> <ion-icon name="download"></ion-icon>
							<p>Tải về</p>
						</a>
					</div>
					<table>

						<tr>
							<!-- <td><input type="checkbox" onclick='checkUncheck(this)' > All</td> -->
							<td>Mã</td>
							<td>Tên</td>
							<td>Giá</td>
							<td>Thanh toán</td>
							<td>Trạng thái</td>
							<td></td>
						</tr>

						<tr>
							<!-- <td><input type="checkbox" name="lang" class="chkboxname" ></td> -->
							<td>1</td>
							<td>Start Refrigerator</td>
							<td>$1200</td>
							<td>Đã thanh toán</td>
							<td><span class="status delivered">Đã giao hàng</span></td>
							<td>
								<div class="dropdown">
									<span> <i class="fas fa-ellipsis-h"></i>
									</span>
									<div class="dropdown-content">
										<a href="#">Xóa</a>
										<!-- <a href="#">Edit</a> -->
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<!-- <td><input type="checkbox" name="lang" class="chkboxname"></td> -->
							<td>2</td>
							<td>Start Refrigerator</td>
							<td>$1200</td>
							<td>Qúa hạn</td>
							<td><span class="status pending">Chưa giải quyết</span></td>
							<td>
								<div class="dropdown">
									<span> <i class="fas fa-ellipsis-h"></i>
									</span>
									<div class="dropdown-content">
										<a href="#">Xóa</a>
										<!-- <a href="#">Edit</a> -->
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<!-- <td><input type="checkbox" name="lang" class="chkboxname" ></td> -->
							<td>3</td>
							<td>Start Refrigerator</td>
							<td>$1200</td>
							<td>Đã thanh toán</td>
							<td><span class="status delivered">Đã giao hàng</span></td>
							<td>
								<div class="dropdown">
									<span> <i class="fas fa-ellipsis-h"></i>
									</span>
									<div class="dropdown-content">
										<a href="#">Xóa</a>
										<!-- <a href="#">Edit</a> -->
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<!-- <td><input type="checkbox" name="lang" class="chkboxname"></td> -->
							<td>4</td>
							<td>Start Refrigerator</td>
							<td>$1200</td>
							<td>Đã thanh toán</td>
							<td><span class="status return">Trả hàng</span></td>
							<td>
								<div class="dropdown">
									<span> <i class="fas fa-ellipsis-h"></i>
									</span>
									<div class="dropdown-content">
										<a href="#">Xóa</a>
										<!-- <a href="#">Edit</a> -->
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<!-- <td><input type="checkbox" name="lang" class="chkboxname" ></td> -->
							<td>5</td>
							<td>Start Refrigerator</td>
							<td>$1200</td>
							<td>Đã thanh toán</td>
							<td><span class="status delivered">Đã giao hàng</span></td>
							<td>
								<div class="dropdown">
									<span> <i class="fas fa-ellipsis-h"></i>
									</span>
									<div class="dropdown-content">
										<a href="#">Xóa</a>
										<!-- <a href="#">Edit</a> -->
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<!-- <td><input type="checkbox" name="lang" class="chkboxname" ></td> -->
							<td>6</td>
							<td>Start Refrigerator</td>
							<td>$1200</td>
							<td>Chưa thanh toán</td>
							<td><span class="status inprogress">Vận chuyển</span></td>
							<td>
								<div class="dropdown">
									<span> <i class="fas fa-ellipsis-h"></i>
									</span>
									<div class="dropdown-content">
										<a href="#">Xóa</a>
										<!-- <a href="#">Edit</a> -->
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<!-- <td><input type="checkbox" name="lang" class="chkboxname"></td> -->
							<td>7</td>
							<td>Start Refrigerator</td>
							<td>$1200</td>
							<td>Đã thanh toán</td>
							<td><span class="status delivered">Đã giao hàng</span></td>
							<td>
								<div class="dropdown">
									<span> <i class="fas fa-ellipsis-h"></i>
									</span>
									<div class="dropdown-content">
										<a href="#">Xóa</a>
										<!-- <a href="#">Edit</a> -->
									</div>
								</div>
							</td>
						</tr>
					</table>
				</div>

				<!--New Customers-->
				<div class="recentCustomers">
					<div class="cardHeader">
						<h2>Khách hàng gần đây</h2>
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
</body>
<!--Link icon-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>


</html>