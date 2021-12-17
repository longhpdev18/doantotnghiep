<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8" />
<link rel="shortcut icon" href="../../assets/images/logo.png">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- STYLE CSS -->
<link rel="stylesheet" href="./../assets/css/style.css" />
<!-- UTILITIES CSS -->
<link rel="stylesheet" href="./../assets/css/utilities.css" />
<link rel="stylesheet" href="./../assets/css/responsive.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<title>Giỏ hàng</title>



<!-- MY JS -->

<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />

<!-- FLAT-ICON -->
<link rel=”stylesheet”
	href=”https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css” />

<!-- JQUERY -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
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
							<form action="/cart/update/${item.getSp().masp}" method="post">
								<div class="cart-list-content">
									<div class="cart-row">
										<div class="cart-row-image">
											<img src="./../assets/img/sanpham/${item.getSp().hinh}"
												alt="${item.getSp().tensp}" class="cart-image">
										</div>
										<div class="cart-row-detail">
											<div class="cart-rowdetail-left">
												<div class="cart-name">${item.getSp().tensp}</div>
											</div>
											<div class="cart-rowdetail-right">
												<div class="qty-wp">
													<button class="btn-qty-down" id="btn-qty-down" >
														<i class="fas fa-caret-left"></i>
													</button>
													<input type="number" class="qty-value" step="1" name="qty"
														value="${item.qty}" min="1" max="100"
														onblur="this.form.submit()">
													<button class="btn-qty-up" id="btn-qty-up">
														<i class="fas fa-caret-right"></i>
													</button>
												</div>
												<div class="cart-price"><fmt:formatNumber value = "${(item.qty * item.getSp().gia)-(item.getSp().gia * item.getSp().deal/100 * item.qty)}" maxFractionDigits = "0" type = "number"/> VND
												</div>
											</div>
										</div>
										<div class="cart-row-manage">
											<a href="/cart/remove/${item.getSp().masp}" class="btn-cart-delete">
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
									<fmt:formatNumber value = "${cart.getAmount()}" maxFractionDigits = "0" type = "number"/> VND
												</div>
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
								<div class="cart-bottom-right total-paid"><fmt:formatNumber value = "${cart.getAmount()}" maxFractionDigits = "0" type = "number"/> VND
												</div>
							</div>
						</div>
						<div class="cart-group-button">
							<button class="btn btn-primary btn-order rounded-8"><a style="text-decoration: none; color: white;" href="/paid" >Đặt
								hàng</a></button>
							<button class="btn btn-white bg-white-hover btn-update rounded-8"><a href="/" >
											 Tiếp tục mua hàng
											</a></button>
						</div>
						
					</c:if>


					<!-- ==== KHI CHƯA CÓ SẢN PHẨM ====== -->
					<c:if test="${empty cart.items}">
						<div class="cart-empty">
							<h2 class="cart-empty-title">Bạn chưa thêm sản phẩm nào</h2>
							<a href="/">Tiếp tục mua hàng</a>
						</div>
					</c:if>
					
				</div>

			</div>
		</div>
		<jsp:include page="./../../home/footer.jsp"></jsp:include>
	</div>
</body>
<!-- BOXICON -->

<!-- MY JS -->

<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="./../assets/js/starterCart.js"></script>
<script src="./../assets/js/modules.js"></script>
<script src="./../assets/js/app.js"></script>
<script src="./../assets/js/login.js"></script>
<!-- JQUERY -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</body>