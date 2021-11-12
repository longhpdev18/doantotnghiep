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
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
	<link rel="stylesheet" href="./../assets/css/style.css" />

	<link rel="stylesheet" href="./../assets/css/responsive.css" />



	<!-- FONT ANWESOME -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />

	<!-- FLAT-ICON -->
	<link rel=”stylesheet”
		href=”https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css” />

	<!-- JQUERY -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />

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
				<div class="product-multi product-multi-slider">
					<ul class="products__list">
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
					</ul>
					<ul class="products__list">
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
					</ul>
					<ul class="products__list">
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
					</ul>
					<ul class="products__list">
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
						<li class="product__item"><a href="./modules/detail-product/"
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
										<form method="get" action="./modules/detail-product/">
											<button type="submit"
												class="btn btn-light btn-addToCart rounded-8">Thêm
												vào giỏ</button>
										</form>
									</div>
								</div>
						</a></li>
					</ul>

				</div>

			</div>

		</div>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>

</body>

<!-- 
<script src="./../assets/js/modules.js"></script> -->
<script src="./../assets/js/app.js"></script>
<script src="./../assets/js/starter.js"></script>
<script src="./../assets/js/login.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<!-- JQUERY -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</body>