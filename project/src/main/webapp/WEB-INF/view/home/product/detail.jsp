
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

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

<title>Chi tiết sản phẩm</title>


<!-- MY JS -->

<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />

<!-- FLAT-ICON -->
<link rel=”stylesheet”
	href=”https://cdn-uicons.flaticon.com/uicons-regular-rounded/css/uicons-regular-rounded.css” />

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- JQUERY -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
</head>

<body>
	<div class="container" style="width: 100%">
		<jsp:include page="./../../home/header.jsp"></jsp:include>

		<div class="product-detail">
			<div class="product-detail-wp">
				<div class="product-detail-top">
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
									<li><strong class="mr-10">Nhà sản xuất:</strong> 
										<c:forEach var="nh" items="${listNH}">
											<c:if test="${item.manh == nh.manh}">${nh.tennh}</c:if>
										</c:forEach></li>
									<li><strong class="mr-10">Xuất xứ:</strong> Chính hãng</li>
									<li><strong class="mr-10">Bảo hành:</strong> 24 Tháng</li>
									<li><strong class="mr-10">Tình trạng:</strong> <c:choose>
											<c:when test="${item.tinhtrang == true }">Còn hàng</c:when>
											<c:otherwise>Hết hàng</c:otherwise>
										</c:choose></li>
								</div>
							</ul>
							<div class="product-promotion mb-10">
								<h1>Mô tả</h1>
								<p class="text-red bg-light">${item.mota}</p>
							</div>
							<div class="product-group-price">
								<li class="product-price-old text-gray"><fmt:formatNumber value = "${item.gia}" maxFractionDigits = "0" type = "number"/> VND</li>
								<li class="product-price-current"><fmt:formatNumber value = "${item.gia - (item.gia*item.deal/100)}" maxFractionDigits = "0" type = "number"/> VND</li>
							</div>
						</div>
						<div class="group-button-detail">
							<div class="group-button-content">
								<a href="/cart/add/${item.masp}"
									class="btn btn-buy btn-primary rounded-8">Mua ngay</a>
								<button class="btn btn-addToCart btn-light rounded-8"
									value="${item.masp}" data-tinhtrang="${item.tinhtrang}" >Thêm vào giỏ</button>
							</div>
						</div>
					</div>
				</div>
				<!-- <div class="product-specs">
					<div class="product-specs-wp">
						<p class="product-specs-title">Thông số kỹ thuật</p>
						<div class="product-specs-row">
							<div class="specs-row-left">CPU</div>
							<div class="specs-row-right">AMD Ryzen 5 – 5500U</div>
						</div>
						<div class="product-specs-row">
							<div class="specs-row-left">RAM</div>
							<div class="specs-row-right">8GB DDR4 (2x SO-DIMM socket,
								up to 32GB SDRAM)</div>
						</div>
						<div class="product-specs-row">
							<div class="specs-row-left">Ổ cứng</div>
							<div class="specs-row-right">512GB PCIe® NVMe™ M.2 SSD</div>
						</div>
						<div class="product-specs-row">
							<div class="specs-row-left">GPU</div>
							<div class="specs-row-right">NVIDIA GeForce GTX 1650 4GB
								GDDR6</div>
						</div>
						<div class="product-specs-row">
							<div class="specs-row-left">Màn hình</div>
							<div class="specs-row-right">15.6" FHD (1920 x 1080) IPS,
								Anti-Glare, 144Hz</div>
						</div>
						<div class="product-specs-row">
							<div class="specs-row-left">Cổng giao tiếp</div>
							<div class="specs-row-right">1x USB 3.0, 1x USB Type C, 2x
								USB 2.0, 1x HDMI, 1x RJ45</div>
						</div>
						<div class="product-specs-row">
							<div class="specs-row-left">Ổ quang</div>
							<div class="specs-row-right">Không</div>
						</div>
						<div class="product-specs-row">
							<div class="specs-row-left">Audio</div>
							<div class="specs-row-right">True Harmony; Dolby® Audio
								Premium</div>
						</div>
						<div class="product-specs-row">
							<div class="specs-row-left">Khe thẻ nhớ</div>
							<div class="specs-row-right">Không</div>
						</div>
						<div class="product-specs-row">
							<div class="specs-row-left">Chuẩn LAN</div>
							<div class="specs-row-right">10/100/1000/Gigabits Base T</div>
						</div>

					</div>
				</div> -->


			</div>

			 <div class="comment">
			<!--	<div class="comment-wp">
					<div class="comment-headding">
						<i class="fas fa-comments"></i>Hỏi đáp & hỗ trợ
					</div>
					<div class="comment-content">
						<form action="" class="comment-input">
							<input type="text" class="txtCommentInput"
								placeholder="Nhập bình luận của bạn">
							<button class="commentButton">Gửi</button>
						</form>
						<li class="comment-item">
							<div class="comment-item-content">
								<div class="comment-item-top">
									<div class="comment-user comment-user-user">Hoàng Phi
										Long</div>
									<div class="comment-user-date">
										10:00 <span>10-11-2021</span>
									</div>
								</div>
								<div class="comment-item-bottom">Acer Aspire 7 A715 42G
									R6ZR tích hợp card đồ họa NVIDIA GTX1650 4GB GDDR6 ra mắt năm
									2020, là laptop chơi game tốt nhất phân khúc. Không chỉ vậy,
									phiên bản này còn mang thiết kế mới gọn gàng và sexy hơn.</div>
							</div>
							<div class="comment-item-button">
								<a href="#">Thích</a> <a href="#">Trả lời</a> <a href="#">Báo
									cáo</a> <span class="comment-like-count">(125 lượt thích)</span>
							</div>
						</li>
						<li class="comment-item">
							<div class="comment-item-sub">
								<div class="comment-item-content">
									<div class="comment-item-top">
										<div class="comment-user comment-user-admin">QTV
											BESTGEAR</div>
										<div class="comment-user-date">
											10:10 <span>10-11-2021</span>
										</div>
									</div>
									<div class="comment-item-bottom">Acer Aspire 7 A715 42G
										R6ZR tích hợp card đồ họa NVIDIA GTX1650 4GB GDDR6 ra mắt năm
										2020, là laptop chơi game tốt nhất phân khúc. Không chỉ vậy,
										phiên bản này còn mang thiết kế mới gọn gàng và sexy hơn.</div>
								</div>
								<div class="comment-item-button">
									<a href="#">Thích</a> <a href="#">Trả lời</a> <a href="#">Báo
										cáo</a> <span class="comment-like-count">(125 lượt thích)</span>
								</div>
							</div>
							<div class="comment-item-sub">
								<div class="comment-item-content">
									<div class="comment-item-top">
										<div class="comment-user comment-user-admin">QTV
											BESTGEAR</div>
										<div class="comment-user-date">
											10:10 <span>10-11-2021</span>
										</div>
									</div>
									<div class="comment-item-bottom">Acer Aspire 7 A715 42G
										R6ZR tích hợp card đồ họa NVIDIA GTX1650 4GB GDDR6 ra mắt năm
										2020, là laptop chơi game tốt nhất phân khúc. Không chỉ vậy,
										phiên bản này còn mang thiết kế mới gọn gàng và sexy hơn.</div>
								</div>
								<div class="comment-item-button">
									<a href="#">Thích</a> <a href="#">Trả lời</a> <a href="#">Báo
										cáo</a> <span class="comment-like-count">(125 lượt thích)</span>
								</div>
							</div>
						</li>
						<li class="comment-item">
							<div class="comment-item-content">
								<div class="comment-item-top">
									<div class="comment-user comment-user-user">Hoàng Phi
										Long</div>
									<div class="comment-user-date">
										10:00 <span>10-11-2021</span>
									</div>
								</div>
								<div class="comment-item-bottom">Acer Aspire 7 A715 42G
									R6ZR tích hợp card đồ họa NVIDIA GTX1650 4GB GDDR6 ra mắt năm
									2020, là laptop chơi game tốt nhất phân khúc. Không chỉ vậy,
									phiên bản này còn mang thiết kế mới gọn gàng và sexy hơn. Acer
									Aspire 7 A715 42G R6ZR tích hợp card đồ họa NVIDIA GTX1650 4GB
									GDDR6 ra mắt năm 2020, là laptop chơi game tốt nhất phân khúc.
									Không chỉ vậy, phiên bản này còn mang thiết kế mới gọn gàng và
									sexy hơn.</div>
							</div>
							<div class="comment-item-button">
								<a href="#">Thích</a> <a href="#">Trả lời</a> <a href="#">Báo
									cáo</a> <span class="comment-like-count">(125 lượt thích)</span>
							</div>
						</li>
					</div>
				</div>-->
			</div> 
			<jsp:include page="./../../home/footer.jsp"></jsp:include>
		</div>

		<script
			src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
		<script src="./../assets/js/starterCart.js"></script>
		<script src="./../assets/js/modules.js"></script>
		<script src="./../assets/js/app.js"></script>
		<script src="./../assets/js/login.js"></script>
		<!-- JQUERY -->
		<script type="text/javascript"
			src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</body>
</html>