
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- STYLE CSS -->
<link rel="stylesheet" href="./../assets/css/style.css" />
<!-- UTILITIES CSS -->
<link rel="stylesheet" href="./../assets/css/utilities.css" />
<link rel="stylesheet" href="./../assets/css/responsive.css">
<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="width: 100%">
		<jsp:include page="./../../home/header.jsp"></jsp:include>

		<div class="content">
			<div class="content__container">
				<div class="orders">
					<h1>Danh sách đơn hàng</h1>

					<!-- KHI DANH SÁCH ĐƠN HÀNG TRỐNG // MỞ COMMENT RA LÀ ĐƯỢC -->

					<!--                     <ul class="order-empty">
                        <div class="empty-image">
                            <img src="../../images/pdcat-empty.png" alt="">
                        </div>
                        <h1>Oh no!</h1>
                        <p>Danh sách đơn hàng trống...</p>
                        <a href="../../" class="">Tiếp tục mua hàng</a>
                    </ul> -->
					<ul class="order-item">
						<div class="order-item-top">
						</div>
						<div class="order-item-bottom">
							<div class="left">
								<div class="order-status">
									<div class="order-status-title">Trạng thái đơn hàng:</div>
									<div class="od-status">Đơn hàng đã được tiếp nhận</div>
								</div>
							</div>
							<div class="right">
								<div class="total-price-order">
									<div class="total-price-left">Tổng thanh toán:</div>
									<div class="total-price-right">59.000.000 đ</div>
								</div>
								<div class="order-item-button">
									<a href="../order-detail/" class="order-btn order-btn-detail">
										Chi tiết đơn hàng</a>
									<button class="order-btn order-btn-cancel">Hủy đơn
										hàng</button>
								</div>
							</div>
						</div>
					</ul>
					<ul class="order-item">
						<div class="order-item-top">
						</div>
						<div class="order-item-bottom">
							<div class="left">
								<div class="order-status">
									<div class="order-status-title">Trạng thái đơn hàng:</div>
									<div class="od-status">Đơn hàng đã được tiếp nhận</div>
								</div>
							</div>
							<div class="right">
								<div class="total-price-order">
									<div class="total-price-left">Tổng thanh toán:</div>
									<div class="total-price-right">59.000.000 đ</div>
								</div>
								<div class="order-item-button">
									<a href="../order-detail/" class="order-btn order-btn-detail">
										Chi tiết đơn hàng</a>
									<button class="order-btn order-btn-cancel">Hủy đơn
										hàng</button>
								</div>
							</div>
						</div>
					</ul>

				</div>
			</div>
		</div>

		<jsp:include page="./../../home/footer.jsp"></jsp:include>
	</div>

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="./../assets/js/starterCart.js"></script>
<script src="./../assets/js/modules.js"></script>
<script src="./../assets/js/app.js"></script>
<script src="./../assets/js/login.js"></script>
<!-- JQUERY -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</html>