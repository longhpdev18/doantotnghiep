<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin</title>
<link rel="shortcut icon" href="../../assets/images/logo.png">
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
				<div class="title-page">Quản lý nhãn hiệu</div>
				<div class="manage-product-wp">
					<div class="add_product">
						<div class="add_product-heading">Thêm nhãn hiệu</div>
						<form action="" class="fAdd-product">
							<div class="input_form">
								<label id="labelID" for="nameproduct" class="name">Mã
									nhãn hiệu </label> <input id="idNH" type="text" name="nameproduct"
									placeholder="Mã nhãn hiệu" readonly="readonly" required>

								<label for="nameproduct" class="name">Tên nhãn hiệu</label> <input
									id="nameNH" type="text" name="nameproduct"
									placeholder="Tên nhãn hiệu" required>
							</div>
							<div class="group-button-add">
								<button id="addNH" class="add-product">Thêm</button>
								<button id="updateNH" class="add-product">Cập nhật</button>
							</div>
						</form>
					</div>

					<div class="list-product">
						<div class="list-product-heading">Danh sách nhãn hiệu</div>
						<table>
							<tr>
								<th>Mã NH</th>
								<th>Tên nhãn hiệu</th>
								<th></th>
							</tr>
							<c:forEach var="item" items="${listNH}">
								<tr>
									<td>${item.manh}</td>
									<td>${item.tennh}</td>
									<td>
										<div class="btn-brand">
											<button class="edit-btn-brand" onclick="editNH(${item.manh})">Sửa</button>
											<button class="delete-btn-brand"
												onclick="delectNH(${item.manh})">Xóa</button>
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
<script src="../assets/js/admin/nhanhieu.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>
</html>