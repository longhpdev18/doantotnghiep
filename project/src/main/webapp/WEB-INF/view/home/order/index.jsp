
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
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
<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="width: 100%">
		<jsp:include page="./../../home/header.jsp"></jsp:include>

		<div class="content">
			<div class="content__container">
				<div class="orders">
					<h1>Danh sách đơn hàng</h1>

					<!-- KHI DANH SÁCH ĐƠN HÀNG TRỐNG // MỞ COMMENT RA LÀ ĐƯỢC -->

					<!--                     <ul class="order-empty">
                        <div class="empty-image">
                            <img src="../../images/pdcat-empty.png" alt="">
                        </div>
                        <h1>Oh no!</h1>
                        <p>Danh sách đơn hàng trống...</p>
                        <a href="../../" class="">Tiếp tục mua hàng</a>
                    </ul> -->
					<c:forEach var="hd" items="${listHD}">
						<c:if test="${hd.makh==maKH}">
							<ul class="order-item">
								<div class="order-item-heading">
									<div class="order-item-id">
										ID đơn hàng: <span>${hd.mahd}</span>
									</div>
									<div class="order-item-date">${hd.ngaymua}</div>
								</div>

								<c:forEach var="hdct" items="${listHDCT}">
									<c:if test="${hdct.mahd==hd.mahd}">
										<div class="order-item-top">
											<li class="order-product"><c:forEach var="sp"
													items="${listSP}">
													<c:if test="${sp.masp==hdct.masp}">
														<a href="#" class="order-pd-content">
															<div class="order-pd-image">
																<img src="../../assets/img/sanpham/${sp.hinh}" />
															</div>
															<div class="order-pd-detail">
																<div class="order-pd-detail-name">${sp.tensp}</div>
																<div class="order-pd-detail-qty">X${hdct.soluong}
																</div>
															</div>
															<div class="order-pd-price">
															<fmt:formatNumber value = "${(hdct.soluong*sp.gia)-(sp.gia*sp.deal/100 * hdct.soluong)}" maxFractionDigits = "0" type = "number"/> VND
																</div>
														</a>
													</c:if>
												</c:forEach></li>
									</c:if>
								</c:forEach>
				</div>
				<div class="order-item-bottom">
					<div class="left">
						<div class="order-status">
							<div class="order-status-title">Trạng thái đơn hàng:</div>
							<div class="od-status">${hd.trangthai}</div>
						</div>
					</div>
					<div class="right">
						<div class="total-price-order">
							<div class="total-price-left">Tổng thanh toán:</div>
							<div class="total-price-right">
								<c:set var="price" value="0" />
								<c:forEach var="hdct" items="${listHDCT}">
									<c:if test="${hdct.mahd==hd.mahd}">
										<c:forEach var="sp" items="${listSP}">
											<c:if test="${sp.masp==hdct.masp}">


											</c:if>
										</c:forEach>
									</c:if>
								</c:forEach>
								<fmt:formatNumber value = "${hd.tongtien}" maxFractionDigits = "0" type = "number"/> VND
										
							</div>
						</div>
						<div class="order-item-button">
							<a href="/order_detail/?mahd=${hd.mahd}"
								class="order-btn order-btn-detail"> Chi tiết đơn hàng</a>
							<button class="order-btn order-btn-cancel" value="${hd.mahd}">Hủy đơn hàng</button>
						</div>
					</div>
				</div>
				</ul>
				</c:if>
				</c:forEach>


			</div>
		</div>
	</div>

	<jsp:include page="./../../home/footer.jsp"></jsp:include>
	</div>

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="./../assets/js/starterCart.js"></script>
<script src="./../assets/js/modules.js"></script>
<script src="./../assets/js/app.js"></script>
<script src="./../assets/js/login.js"></script>
<!-- JQUERY -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

</html>