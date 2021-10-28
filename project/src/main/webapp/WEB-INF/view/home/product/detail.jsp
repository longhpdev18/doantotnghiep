<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
					<c:forEach var="item" items="${items}">
						<div class="product-detail">
							<div class="product-detail-left">
								<img src="./../assets/img/sanpham/${item.hinh}" alt=""
									class="product-detail-image">
							</div>
							<div class="product-detail-right">

								<div class="detail-right-content">
									<h1 class="product-detail-name">${item.tensp}</h1>
									<h2 class="product-detail-id text-gray mb-10">#${item.masp}</h2>
									<h2 class="product-detail-nof mb-10">
										<span class="circle mr-10"> <i class="fas fa-bullhorn"></i>
										</span>
										<p>12 người đang quan tâm sản phẩm</p>
									</h2>
									<ul class="product-info mb-10">
										<h3 class="mb-10">Thông tin chung:</h3>
										<div class="product-info-content">
											<li><strong class="mr-10">Nhà sản xuất:</strong> <c:choose>
													<c:when test="${item.manh == 1}">Asus</c:when>
													<c:when test="${item.manh == 2}">Acer</c:when>
													<c:when test="${item.manh == 3}">Lenovo</c:when>
													<c:when test="${item.manh == 4}">MSI</c:when>
													<c:when test="${item.manh == 5}">Logitech</c:when>
													<c:when test="${item.manh == 6}">Razer</c:when>
													<c:when test="${item.manh == 7}">HP</c:when>
													<c:when test="${item.manh == 8}">GVN</c:when>
													<c:when test="${item.manh == 9}">Microsoft</c:when>
													<c:otherwise>Stell Series</c:otherwise>
												</c:choose></li>
											<li><strong class="mr-10">Xuất xứ:</strong> Chính hãng</li>
											<li><strong class="mr-10">Bảo hành:</strong> 24 Tháng</li>
											<li><strong class="mr-10">Tình trạng:</strong> <c:choose>
													<c:when test="${item.tinhtrang == true }">hàng mới</c:when>
													<c:otherwise>Đã qua sử dụng</c:otherwise>
												</c:choose></li>
										</div>
									</ul>
									<div class="product-promotion mb-10">
										<h1>Khuyến mãi</h1>
										<p class="text-red bg-light">${item.mota}</p>
									</div>
									<div class="product-group-price">
										<li class="product-price-old text-gray">24.499.000đ</li>
										<li class="product-price-current">${item.gia}</li>
									</div>
								</div>
					</c:forEach>
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