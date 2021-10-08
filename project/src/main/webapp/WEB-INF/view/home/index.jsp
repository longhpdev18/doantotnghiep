<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>

<!-- STYLE CSS -->
<link rel="stylesheet" href="./css/style.css" />

<!-- UTILITIES CSS -->
<link rel="stylesheet" href="./css/utilities.css" />


<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Index</title>
<link rel="stylesheet" href="./css/style.css">

<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<jsp:include page="${menu}"></jsp:include>
		<jsp:include page="${page}"></jsp:include>
		<div class="products">
			<ul class="products__container">
				<div class="products__heading">
					<h2 class="products__title">Top sản phẩm bán chạy</h2>
					<a href="#" class="cta-link cta-pdmore">Xem thêm</a>
				</div>
				<ul class="products__list">

					<c:forEach var="item" items="${items}">
						<li class="product__item"><a href="#"
							class="cta-link cta-product">
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
									<img src="./img/sanpham/${item.hinh}" alt=""
										class="product-image">
								</div>
								<div class="product__bottom">
									<div class="product__content">
										<h6 class="product-name">${item.tensp}</h6>
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">${item.gia}đ</h4>
									</div>
									<div class="product__btnGroups">
										<button class="btn btn-primary btn-buy rounded-8">Mua
											ngay</button>
										<button class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</div>
								</div>
						</a></li>
					</c:forEach>
				</ul>
			</ul>
		</div>
		<div class="pagination">
			<div class="pagination__container">
				<button
					class="btn btn-pagination btn-prev bg-primary-hover text-primary-hover">
					<i class="fas fa-caret-left"></i>
				</button>
				<button class="btn btn-pagination btn-number bg-primary-hover">2</button>
				<button class="btn btn-pagination btn-number bg-primary-hover">3</button>
				<button class="btn btn-pagination btn-number bg-primary-hover">4</button>
				<button
					class="btn btn-pagination btn-next bg-primary-hover text-primary-hover">
					<i class="fas fa-caret-right"></i>
				</button>
			</div>
		</div>
		<jsp:include page="./footer.jsp"></jsp:include>
	</div>
</body>
<!-- BOXICON -->
<script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>

<!-- MY JS -->
<script src="./js/app.js"></script>

<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</body>