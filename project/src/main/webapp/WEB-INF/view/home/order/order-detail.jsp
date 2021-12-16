
<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
<title>Insert title here</title>
</head>
<body>
	<div class="container" style="width: 100%">
		<jsp:include page="./../../home/header.jsp"></jsp:include>

		<div class="content">
			<div class="content__container">
				<div class="order-detail">
					<h1>Chi tiết đơn hàng</h1>
					<div class="odd-wp">
					 <c:forEach var="hd" items="${listHD}">
                    	<c:if test="${hd.makh==maKH&&hd.mahd==maHD}">
                    	
						<div class="odd-heading">
							<div class="left">
								<div class="order-detail-date">
									Ngày đặt hàng: <span>${hd.ngaymua}</span>
								</div>
							</div>
							<div class="right">
								<div class="order-detail-id">
									ID đơn hàng: <span>${hd.mahd}</span>
								</div>
								<div class="order-detail-status">
									<div class="odd-status">${hd.trangthai}</div>
								</div>
							</div>
						</div>
						<div class="odd-ship-detail">
							<div class="odd-ship-content">
								<div class="sd-ship-wp">
									<div class="sd-point-wp">
									<c:choose>
									<c:when test="${hd.trangthai=='Đã nhận đơn'||hd.trangthai=='Đang chuẩn bị'||hd.trangthai=='Đang vận chuyển'||hd.trangthai=='Đang giao hàng'||hd.trangthai=='Đã giao hàng'}">
										<div class="status-point active">
											<i class="far fa-list-alt"></i>
										</div>
									</c:when>
									<c:otherwise>
										<div class="status-point ">
											<i class="far fa-list-alt"></i>
										</div>
									</c:otherwise>
									</c:choose>
									</div>
									<div class="sd-point-wp">
									<c:choose>
									<c:when test="${hd.trangthai=='Đang chuẩn bị'||hd.trangthai=='Đang vận chuyển'||hd.trangthai=='Đang giao hàng'||hd.trangthai=='Đã giao hàng'}">
										<div class="status-point active">
											<i class="fas fa-truck-loading"></i>
										</div>
									</c:when>
									<c:otherwise>
										<div class="status-point ">
											<i class="fas fa-truck-loading"></i>
										</div>
									</c:otherwise>
									</c:choose>
										
									</div>
									<div class="sd-point-wp">
									<c:choose>
									<c:when test="${hd.trangthai=='Đang vận chuyển'||hd.trangthai=='Đang giao hàng'||hd.trangthai=='Đã giao hàng'}">
										<div class="status-point active">
											<i class="fas fa-shipping-fast"></i>
										</div>
									</c:when>
									<c:otherwise>
										<div class="status-point ">
											<i class="fas fa-shipping-fast"></i>
										</div>
									</c:otherwise>
									</c:choose>
										
									</div>
									<div class="sd-point-wp">
									<c:choose>
									<c:when test="${hd.trangthai=='Đang giao hàng'||hd.trangthai=='Đã giao hàng'}">
										<div class="status-point active">
											<i class="fas fa-box"></i>
										</div>
									</c:when>
									<c:otherwise>
										<div class="status-point">
											<i class="fas fa-box"></i>
										</div>
									</c:otherwise>
									</c:choose>
									</div>
									
									<div class="sd-point-wp">
									<c:choose>
									<c:when test="${hd.trangthai=='Đã giao hàng'}">
										<div class="status-point active">
											<i class="far fa-star"></i>
										</div>
									</c:when>
									<c:otherwise>
										<div class="status-point">
											<i class="far fa-star"></i>
										</div>
									</c:otherwise>
									</c:choose>
										
									</div>
								</div>
								<c:choose>
									<c:when test="${hd.trangthai=='Đã nhận đơn'}">
										<div class="sd-process-wp">
									<div class="sd-process-load" style="width: 0%;"></div>
									</div>
									</c:when>
									<c:when test="${hd.trangthai=='Đang chuẩn bị'}">
										<div class="sd-process-wp">
									<div class="sd-process-load" style="width: 25%;"></div>
									</div>
									</c:when>
									<c:when test="${hd.trangthai=='Đang vận chuyển'}">
										<div class="sd-process-wp">
									<div class="sd-process-load" style="width: 50%;"></div>
									</div>
									</c:when>
									<c:when test="${hd.trangthai=='Đang giao hàng'}">
										<div class="sd-process-wp">
									<div class="sd-process-load" style="width: 75%;"></div>
									</div>
									</c:when>
									<c:otherwise>
										<div class="sd-process-wp">
											<div class="sd-process-load" style="width: 100%;"></div>
										</div>
									</c:otherwise>
									</c:choose>
								

							</div>
							<div class="sd-status-wp">
								<div class="sd-status-text">Đơn hàng đã được tiếp nhận</div>
								<div class="sd-status-text">Đơn hàng đang được chuẩn bị</div>
								<div class="sd-status-text">Đơn hàng đang vận chuyển</div>
								<div class="sd-status-text">Đơn hàng đang giao</div>
								<div class="sd-status-text">Đánh giá</div>
							</div>
						</div>
						
						<div class="odd-button">
							<button class="odd-btn odd-btn-received">Xác nhận</button>
							<button class="odd-btn odd-btn-contact">Liên hệ</button>
							<button class="odd-btn odd-btn-complain">Khiếu nại</button>
						</div>
						<div class="odd-address">
							<div class="odd-address-heading">
								<div class="odd-heading-left">
									<h1>Địa chỉ nhận hàng</h1>
								</div>
								<div class="odd-address-right">
									<div class="odd-shipunit">Giao hàng tiết kiệm</div>
									<div class="odd-shipcode">829048590</div>
								</div>
							</div>
							<div class="odd-address-wp">
								<div class="odd-address-buyer">
									<p class="odd-address-name">${hd.tennguoinhan}</p>
									<p class="odd-address-phone">(+84) ${hd.sdtnguoinhan}</p>
									<p class="odd-address-address">${hd.diachinguoinhan}</p>
								</div>
								<div class="odd-address-status">
									<div class="address-status">
										<li class="address-status-item">
											<div class="address-point-wp">
												<i class="fas fa-circle"></i>
											</div>
											<div class="address-status-content">
												<div class="address-date-wp">
													<div class="address-date">
														<div class="address-date-time">14:30</div>
														<div class="address-date-date">08-11-2021</div>
													</div>
												</div>
												<div class="address-log-wp">
													<div class="address-log"> ${hd.trangthai}</div>
												</div>
											</div>
										</li>
										
									</div>
								</div>
							</div>
						</div>
				
						</c:if></c:forEach>
				</div>
				
			</div>
		</div>

					<br>
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