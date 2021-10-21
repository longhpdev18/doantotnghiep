<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Index</title>
<link rel="stylesheet" href="./../assets/css/style.css">
<link rel="stylesheet" href="./../assets/css/utilities.css">

<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>

<body>
	<div class="container">
		<jsp:include page="./../../home/header.jsp"></jsp:include>
		<div class="content">
			<div class="content__container">
				<div class="content-product-detail">
					<div class="product-detail">
						<div class="product-detail-left">
							<img
								src="https://beobeostore.com/wp-content/uploads/2021/07/razer-blade-15-base-2019.jpg"
								alt="" class="product-detail-image">
						</div>
						<div class="product-detail-right">
							<div class="detail-right-content">
								<h1 class="product-detail-name">${cart.tensp}</h1>
								<h2 class="product-detail-id text-gray mb-10">#282722</h2>
								<h2 class="product-detail-nof mb-10">
									<span class="circle mr-10"> <i class="fas fa-bullhorn"></i>
									</span>
									<p>12 người đang quan tâm sản phẩm</p>
								</h2>
								<ul class="product-info mb-10">
									<h3 class="mb-10">Thông tin chung:</h3>
									<div class="product-info-content">
										<li><strong class="mr-10">Nhà sản xuất:</strong>RAZER</li>
										<li><strong class="mr-10">Xuất xứ:</strong> Chính hãng</li>
										<li><strong class="mr-10">Bảo hành:</strong> 24 Tháng</li>
										<li><strong class="mr-10">Tình trạng:</strong> Mới</li>
									</div>
								</ul>
								<div class="product-promotion mb-10">
									<h1>Khuyến mãi</h1>
									<p class="text-red bg-light">- Phong cách thể thao thể hiện
										qua ba màu sắc khác biệt giúp nâng tầm diện mạo và phong cách
										của bạn. Những phiên bản với màu đen nguyên bản Original
										Black, xám cực chất Eclipse Gray, và Electro Punk rực rỡ sẽ
										thể hiện phong cách của bạn.</p>
								</div>
								<div class="product-group-price">
									<li class="product-price-old text-gray">24.499.000đ</li>
									<li class="product-price-current">24.499.000đ</li>
								</div>
							</div>
							<div class="group-button-detail">
								<div class="group-button-content">
									<button class="btn btn-buy btn-primary rounded-8">Mua
										ngay</button>
									<button class="btn btn-addToCart btn-light rounded-8">Thêm
										vào giỏ</button>
								</div>
							</div>
						</div>
					</div>
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

<!-- JQUERY -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>