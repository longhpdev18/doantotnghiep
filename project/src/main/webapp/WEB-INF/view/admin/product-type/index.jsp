<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>
<link rel="shortcut icon" href="../../assets/images/logo.png">
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin</title>

<link rel="stylesheet" href="./../assets/css/admin/style.css">
<link rel="stylesheet" href="./../assets/css/admin/unilities.css">
<link rel="stylesheet" href="./../assets/css/admin/responsive.css">


<!-- BOXICON -->
<script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<!--LINE AWSOME-->
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" />
</head>
<body>
	<div class="container">
		<jsp:include page="./../navigation.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="./../topbar.jsp"></jsp:include>
			<!--BRAND-->
			<div class="manage-product">
				<!-- <div class="border_form"> -->
				<div class="title-page">Quảnlý loại hàng</div>
				<div class="manage-product-wp">
					<div class="add_product">
						<div class="add_product-heading">Thêm loại hàng</div>

						<form class="fAdd-product">
							<div class="input_form">
								<label id="labelID" for="nameproduct" class="name">Mã loại hàng </label> <input
									type="text" id="idLH" name="nameproduct" placeholder="Mã loại hàng" readonly="readonly"
									required>
								<label for="nameproduct" class="name">Tên loại hàng </label> <input
									type="text" id="nameLH" name="nameproduct" placeholder="Tên loại hàng"
									required>
							</div>
							<div class="group-button-add">
							<button class="add-product" id="add-ProductType">Thêm</button>
								<button class="add-product" id="updateLH">Cập nhật</button>
								
							</div>
						</form>
					</div>

					<div class="list-product">
						<div class="list-product-heading">Danh sách loại hàng</div>
						<table>
							<tr>
								<th>Mã loại hàng</th>
								<th>Tên loại hàng</th>
								<th></th>
							</tr>
							<c:forEach var="item" items="${listLH}">
								<tr>
									<td>${item.maloai}</td>
									<td>${item.tenloai}</td>
									<td>
										<div class="btn-brand">
											<button class="edit-btn-brand" onclick="editLH(${item.maloai})">Sửa</button>
											<button class="delete-btn-brand"
												onclick="delectLH(${item.maloai})">Xóa</button>
										</div>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>

			</div>
		</div>
	</div>
</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<script src="../assets/js/admin/loaihang.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>
</html>