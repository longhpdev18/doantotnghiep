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

<link rel="stylesheet" href="./../../assets/css/admin/style.css">
<link rel="stylesheet" href="./../../assets/css/admin/unilities.css">
<link rel="stylesheet" href="./../../assets/css/admin/responsive.css">


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
		<div class="main" style="height: 2000px">
			<jsp:include page="./../topbar.jsp"></jsp:include>
			<div class="contentHDCT">
				<div class="content__containerHD">
					<div class="order-detail">
						<div class="title_detail_order">Quản lý đơn hàng</div>
						<div class="odd-wp">
							<div class="odd-heading">
								<div class="left">
									<div class="order-detail-date">
										Ngày đặt hàng: <span>08/11/2021</span>
									</div>
								</div>
								<div class="right">
									<div class="order-detail-id">
										ID đơn hàng: <span>20210811ABCDEF</span>
									</div>
									<div class="order-detail-status">
										<div class="odd-status">Đơn hàng đang được vận chuyển</div>
									</div>
								</div>
							</div>
					<!-- 		<div class="odd-ship-detail">
								<div class="odd-ship-content">
									<div class="sd-ship-wp">
										<div class="sd-point-wp">
											<div class="status-point active">
												<i class="far fa-list-alt"></i>
											</div>
										</div>
										<div class="sd-point-wp">
											<div class="status-point active">
												<i class="fas fa-truck-loading"></i>
											</div>
										</div>
										<div class="sd-point-wp">
											<div class="status-point active">
												<i class="fas fa-shipping-fast"></i>
											</div>
										</div>
										<div class="sd-point-wp">
											<div class="status-point">
												<i class="fas fa-box"></i>
											</div>
										</div>
										<div class="sd-point-wp">
											<div class="status-point">
												<i class="far fa-star"></i>
											</div>
										</div>
									</div>
									<div class="sd-process-wp">
										<div class="sd-process-load"></div>
									</div>

								</div>
								<div class="sd-status-wp">
									<div class="sd-status-text">Đơn hàng đã được tiếp nhận</div>
									<div class="sd-status-text">Đơn hàng đang được chuẩn bị</div>
									<div class="sd-status-text">Đơn hàng đang vận chuyển</div>
									<div class="sd-status-text">Đơn hàng đang giao</div>
									<div class="sd-status-text">Đánh giá</div>
								</div>
							</div> -->
							<!-- <div class="odd-button">
								<button class="odd-btn odd-btn-received">Đã nhận hàng</button>
								<button class="odd-btn odd-btn-contact">Hủy đơn hàng</button>
								<button class="odd-btn odd-btn-complain">Khiếu nại</button>
							</div> -->
						</div>
					</div>
				</div>
			</div>

			<!--sản phẩm-->
			<div class="odd-content">
				<li class="odd-product"><a href="#" class="odd-pd-content">
						<div class="odd-pd-image">
							<img
								src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
								alt="">
						</div>
						<div class="odd-pd-detail">
							<div class="odd-pd-name">Laptop Gaming Asus ROG Zephyrus
								G14 GA401QE K2097T</div>
							<div class="odd-pd-qty">x5</div>
						</div>
						<div class="odd-pd-price">59.000.000 đ</div>
				</a></li>
				<li class="odd-product"><a href="#" class="odd-pd-content">
						<div class="odd-pd-image">
							<img
								src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
								alt="">
						</div>
						<div class="odd-pd-detail">
							<div class="odd-pd-name">Laptop Gaming Asus ROG Zephyrus
								G14 GA401QE K2097T</div>
							<div class="odd-pd-qty">x5</div>
						</div>
						<div class="odd-pd-price">59.000.000 đ</div>
				</a></li>
				<li class="odd-product"><a href="#" class="odd-pd-content">
						<div class="odd-pd-image">
							<img
								src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
								alt="">
						</div>
						<div class="odd-pd-detail">
							<div class="odd-pd-name">Laptop Gaming Asus ROG Zephyrus
								G14 GA401QE K2097T</div>
							<div class="odd-pd-qty">x5</div>
						</div>
						<div class="odd-pd-price">59.000.000 đ</div>
				</a></li>
				<li class="odd-product"><a href="#" class="odd-pd-content">
						<div class="odd-pd-image">
							<img
								src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
								alt="">
						</div>
						<div class="odd-pd-detail">
							<div class="odd-pd-name">Laptop Gaming Asus ROG Zephyrus
								G14 GA401QE K2097T</div>
							<div class="odd-pd-qty">x5</div>
						</div>
						<div class="odd-pd-price">59.000.000 đ</div>
				</a></li>
				<li class="odd-product"><a href="#" class="odd-pd-content">
						<div class="odd-pd-image">
							<img
								src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
								alt="">
						</div>
						<div class="odd-pd-detail">
							<div class="odd-pd-name">Laptop Gaming Asus ROG Zephyrus
								G14 GA401QE K2097T</div>
							<div class="odd-pd-qty">x5</div>
						</div>
						<div class="odd-pd-price">59.000.000 đ</div>
				</a></li>
				<li class="odd-product"><a href="#" class="odd-pd-content">
						<div class="odd-pd-image">
							<img
								src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
								alt="">
						</div>
						<div class="odd-pd-detail">
							<div class="odd-pd-name">Laptop Gaming Asus ROG Zephyrus
								G14 GA401QE K2097T</div>
							<div class="odd-pd-qty">x5</div>
						</div>
						<div class="odd-pd-price">59.000.000 đ</div>
				</a></li>
				<li class="odd-product"><a href="#" class="odd-pd-content">
						<div class="odd-pd-image">
							<img
								src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
								alt="">
						</div>
						<div class="odd-pd-detail">
							<div class="odd-pd-name">Laptop Gaming Asus ROG Zephyrus
								G14 GA401QE K2097T</div>
							<div class="odd-pd-qty">x5</div>
						</div>
						<div class="odd-pd-price">59.000.000 đ</div>
				</a></li>
		
			</div>


		</div>
	</div>

</body>
</html>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>