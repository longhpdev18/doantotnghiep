<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="UTF-8" />

<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- STYLE CSS -->
<link rel="stylesheet" href="./../assets/css/style.css" />
<link rel="stylesheet" href="./../assets/css/utilities.css" />
<link rel="stylesheet" href="./../assets/css/responsive.css">

	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
<title>Index</title>



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
		<jsp:include page="header.jsp"></jsp:include>
		<jsp:include page="menu.jsp"></jsp:include>

		<div class="products">

			<div class="products-wp">
				<div class="products__heading">
					<h2 class="products__title">
						<i class="fas fa-fire"></i>TOP SẢN PHẨM BÁN CHẠY
					</h2>
					<a href="#" class="cta-link cta-pdmore">Xem thêm</a>
				</div>
				<ul class="products__list product-slider">
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">
							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">
							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">

							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">

							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">
							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">
							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">

							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">

							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="products-wp">
				<div class="products__heading">
					<h2 class="products__title">
						<i class="far fa-star"></i>LAPTOP GAMING ĐƯỢC ƯA CHUỘNG NHẤT THÁNG
					</h2>
					<a href="#" class="cta-link cta-pdmore">Xem thêm</a>
				</div>
				<ul class="products__list">
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">
							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">
							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">

							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">

							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">
							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">
							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">

							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
					<li class="product__item"><a href="./product"
						class="cta-link cta-product">

							<div class="product__top">
								<img
									src="https://minhancomputer.com/media/news/2708_may-tinh-do-hoa-gia-re.jpg"
									alt="" class="product-image">
							</div>
							<div class="product__bottom">
								<div class="product__content">
									<h6 class="product-name">Macbook Pro 15" 8GB RAM 512GB</h6>
									<div class="group-price">
										<h6 class="product-priceOld">23,490,000 đ</h6>
										<h4 class="product-priceNew">21,490,000 đ</h4>
									</div>
								</div>
								<div class="product__btnGroups">
									<form method="get" action="./modules/cart/">
										<button type="submit"
											class="btn btn-primary btn-buy rounded-8">Mua ngay</button>
									</form>
									<form method="get" action="./product">
										<button type="submit"
											class="btn btn-light btn-addToCart rounded-8">Thêm
											vào giỏ</button>
									</form>
								</div>
							</div>
					</a></li>
				</ul>
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
			</div>

		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>


<script src="./../assets/js/modules.js"></script>
<script src="./../assets/js/app.js"></script>

<!-- JQUERY -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</body>