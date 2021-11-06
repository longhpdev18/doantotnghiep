<%@ page pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Index</title>
<link rel="stylesheet" href="./../assets/css/style.css">
<link rel="stylesheet" href="./../assets/css/utilities.css">
<link rel="stylesheet" href="./../assets/css/responsive.css">
<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<script src="./../assets/js/starter.js"></script>

<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<jsp:include page="./../../home/header.jsp"></jsp:include>
		<div class="content">
			<div class="content__container content__cart">
				<h2 class="page__title">Giỏ hàng</h2>
				<table class="cart__tbl ">
					<tr class="cart-product cart-firstChild">
						<td>Sản phẩm</td>
						<td>Tên sản phẩm</td>
						<td>Số lượng</td>
						<td>Giá tiền</td>
						<td>Xóa</td>
					</tr>

					<!-- ==== KHI CHƯA CÓ SẢN PHẨM ====== -->
					<c:if test="${empty cart.items}">
						<tr class="cart-product">
							<td class="cart-empty">
								<h1 class="cart-empty-title">Bạn chưa thêm sản phẩm nào</h1> <a
								href="../../index" class="cta-link">Tiếp tục mua hàng</a>
							</td>
						</tr>
					</c:if>

					<c:if test="${not empty cart.items}">
						<c:forEach var="item" items="${cart.items}">
							<form action="/cart/update/${item.masp}" method="post">
							<tr class="cart-product">
								<td class="card-image"><img
									src="./../assets/img/sanpham/${item.hinh}" alt="${item.tensp}"
									class="cart-contentImage"></td>
								<td class="cart-productName"><a href="#"
									class="cta-link text-primary text-primary-hover"></a>
									${item.tensp}</td>
								<td class="cart-qty">
									<div class="qty-container">
										<button class="btn-qty-down" id="btn-qty-down"
											onclick="stepper(this)">
											<i class="fas fa-caret-left"></i>
										</button>
										<input name="qty" type="number" class="qty-value"
											id="qty-value" step="1" value="${item.qty}" min="1" max="100"
											onblur="this.form.submit()">
										<button class="btn-qty-up" id="btn-qty-up"
											onclick="stepper(this)">
											<i class="fas fa-caret-right"></i>
										</button>
									</div>
								</td>
								<td class="cart-productPrice">${item.qty * item.gia}</td>
								<td class="cart-productDelete"><a
									href="/cart/remove/${item.masp}">
										<div
											class="btn btn-light btn-cart-delete bg-red-hover rounded-8 text-dark">
											<i class="far fa-trash-alt"></i>
										</div>
								</a></td>
							</tr>
							</form>
						</c:forEach>
					</c:if>


				</table>
				<div class="cart-group-button">
					<button class="btn btn-primary btn-order rounded-8">Đặt
						hàng</button>
					<button class="btn btn-white bg-white-hover btn-update rounded-8">Cập
						nhật</button>
				</div>
			</div>
		</div>
		<jsp:include page="./../../home/footer.jsp"></jsp:include>
	</div>
</body>
<!-- BOXICON -->
<script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
<!-- MY JS -->
<script src="./../assets/js/app.js"></script>
<script src="./../assets/js/modules.js"></script>
<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</body>