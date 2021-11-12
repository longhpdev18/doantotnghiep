<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>BESTGEAR - Trang Chủ</title>

<!-- UTILITIES CSS -->
<link rel="stylesheet" href="./../assets/css/utilities.css" />

<!-- STYLE CSS -->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" href="./../assets/css/style.css" />

<link rel="stylesheet" href="./../assets/css/responsive.css" />



<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />

<!-- FLAT-ICON -->
<link rel=”stylesheet”
	href=”https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css” />

<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />

</head>

<body>
	<div class="container" style="width: 100%">
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>

		<div class="products">
		
				<c:forEach var="item" items="${items}">
			<div class="products-wp">
					<div class="products__heading">
						<h2 class="products__title">${item.getLh().tenloai}</h2>
							<a href="#" class="cta-link cta-pdmore">Xem thêm</a>
					</div>
					<c:if test="${item.getLh().maloai%2!=0}">
						<ul class="products__list product-slider">
							<c:forEach var="sp" items="${item.getSp()}">
								<li class="product__item">
								<a href="product/${sp.masp}"
									name="masp" class="cta-link cta-product">
										<div class="product__deal">
											<div class="product__deal--container">
												<div class="deal-tg-left"></div>
												<div class="deal-tg-right"></div>
												<div class="deal-content">
													Giảm<span>30%</span>
												</div>
											</div>
										</div>
										<div class="product__top">
											<img src="./assets/img/sanpham/${sp.hinh}" alt=""
												class="product-image">
										</div>
	
										<div class="product__bottom">
											<div class="product__content">
												<h6 class="product-name">${sp.tensp}</h6>
												<h6 class="product-priceOld">23,490,000 đ</h6>
												<h4 class="product-priceNew">${sp.gia}đ</h4>
											</div>
	
											<div class="product__btnGroups">
												<form method="get" action="cart/add/${sp.masp}">
													[
													<button type="submit"
														class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
													]
												</form>
												<form method="get" action="${sp.masp}">
													<button type="submit"
														class="btn btn-light btn-addToCart rounded-8">Thêm
														vào giỏ</button>
												</form>
											</div>
										</div>
								</a></li>
							</c:forEach>
						</ul>
					</c:if>					
					<c:if test ="${item.getLh().maloai%2==0}">
						<div class="product-multi product-multi-slider">
							<ul class="products__list">
								<c:forEach var="sp" items="${item.getSp()}">
								<li class="product__item"><a href="product/${sp.masp}"
									name="masp" class="cta-link cta-product">
										<div class="product__deal">
											<div class="product__deal--container">
												<div class="deal-tg-left"></div>
												<div class="deal-tg-right"></div>
												<div class="deal-content">
													Giảm<span>30%</span>
												</div>
											</div>
										</div>
										<div class="product__top">
											<img src="./assets/img/sanpham/${sp.hinh}" alt=""
												class="product-image">
										</div>
	
										<div class="product__bottom">
											<div class="product__content">
												<h6 class="product-name">${sp.tensp}</h6>
												<h6 class="product-priceOld">23,490,000 đ</h6>
												<h4 class="product-priceNew">${sp.gia}đ</h4>
											</div>
	
											<div class="product__btnGroups">
												<form method="get" action="cart/add/${sp.masp}">
													[
													<button type="submit"
														class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
													]
												</form>
												<form method="get" action="${sp.masp}">
													<button type="submit"
														class="btn btn-light btn-addToCart rounded-8">Thêm
														vào giỏ</button>
												</form>
											</div>
										</div>
								</a></li>
							</c:forEach>
							</ul>
						</div>
						
					</c:if>
		</div>
		
				</c:forEach>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>

<!-- 
<script src="./../assets/js/modules.js"></script> -->
<script src="./../assets/js/app.js"></script>
<script src="./../assets/js/starter.js"></script>
<script src="./../assets/js/login.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</body>