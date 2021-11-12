<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8" />

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- STYLE CSS -->
<link rel="stylesheet" href="./../assets/css/style.css" />
<!-- UTILITIES CSS -->
<link rel="stylesheet" href="./../assets/css/utilities.css" />
<link rel="stylesheet" href="./../assets/css/responsive.css">

<title>Giỏ hàng</title>



<!-- MY JS -->

<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />

<!-- FLAT-ICON -->
<link rel=”stylesheet”
	href=”https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css” />

<!-- JQUERY -->

</head>

<body>
	<div class="container" style="width: 100%">
		<jsp:include page="./../../home/header.jsp"></jsp:include>
		<div class="cart">
			<div class="cart-wp">

				<div class="cart-list">
					<h2 class="cart-title">Giỏ hàng</h2>
					<c:if test="${not empty cart.items}">
						<c:forEach var="item" items="${cart.items}">
							<form action="/cart/update/${item.masp}" method="post">
								<div class="cart-list-content">
									<div class="cart-row">
										<div class="cart-row-image">
											<img src="./../assets/img/sanpham/${item.hinh}"
												alt="${item.tensp}" class="cart-image">
										</div>
										<div class="cart-row-detail">
											<div class="cart-rowdetail-left">
												<div class="cart-name">${item.tensp}</div>
											</div>
											<div class="cart-rowdetail-right">
												<div class="qty-wp">
													<button class="btn-qty-down" id="btn-qty-down">
														<i class="fas fa-caret-left"></i>
													</button>
													<input type="number" class="qty-value" step="1"
														value="${item.qty}" min="1" max="100"
														onblur="this.form.submit()">
													<button class="btn-qty-up" id="btn-qty-up">
														<i class="fas fa-caret-right"></i>
													</button>
												</div>
												<div class="cart-price">${item.qty * item.gia}</div>
											</div>
										</div>
										<div class="cart-row-manage">
											<a href="/cart/remove/${item.masp}" class="btn-cart-delete">
												<i class="far fa-trash-alt"></i>
											</a>
										</div>
									</div>

								</div>
							</form>
						</c:forEach>
						<div class="cart-bottom">
							<div class="cart-bottom-row">
								<div class="cart-bottom-left">Tổng tiền hàng:</div>
								<div class="cart-bottom-right cart-total-price">
									177.000.000 đ</div>
							</div>
							<div class="cart-bottom-row">
								<div class="cart-bottom-left shipping-fee-text">Phí vận
									chuyển:</div>
								<div class="cart-bottom-right shipping-fee">0 đ</div>
							</div>
							<div class="cart-bottom-row">
								<div class="cart-bottom-left  discount-text">
									Giảm giá từ Voucher: <span class="voucher-apply active"></span>
								</div>
								<div class="cart-bottom-right discount-money">
									<input type="text" class="cart-voucher-text">
								</div>
							</div>
							<div class="cart-bottom-row">
								<div class="cart-bottom-left total-paid-text">Tổng thanh
									toán:</div>
								<div class="cart-bottom-right total-paid">174.000.000 đ</div>
							</div>
						</div>
				</div>

				<div class="cart-group-button">
					<button class="btn btn-primary btn-order rounded-8">Đặt
						hàng</button>
					<button class="btn btn-white bg-white-hover btn-update rounded-8">Cập
						nhật</button>
				</div>
				</c:if>
				<!-- ==== KHI CHƯA CÓ SẢN PHẨM ====== -->
				<c:if test="${empty cart.items}">
					<div class="cart-empty">
						<h2 class="cart-empty-title">Bạn chưa thêm sản phẩm nào</h2>
						<a href="../../">Tiếp tục mua hàng</a>
					</div>
				</c:if>

			</div>
		</div>
		<jsp:include page="./../../home/footer.jsp"></jsp:include>
	</div>
</body>
<!-- BOXICON -->

<!-- MY JS -->
<script src="./../assets/js/starter.js"></script>
<script src="./../assets/js/modules.js"></script>
<script src="./../assets/js/app.js"></script>
<script src="./../assets/js/login.js"></script>
<!-- JQUERY -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</body>