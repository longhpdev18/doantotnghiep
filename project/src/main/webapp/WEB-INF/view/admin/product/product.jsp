<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>
<link rel="shortcut icon" href="../../assets/images/logo.png">
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin</title>
<!--CSS-->
<!--     <link rel="stylesheet" href="./../assets/css/admin/index.css">
    <link rel="stylesheet" href="./../assets/css/admin/listProduct.css">
    <link rel="stylesheet" href="./../assets/css/admin/product.css">
   
    <link rel="stylesheet" href="./../assets/css/admin/2.css"> -->

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


			<!-- <div class="delete_product_nof">
				<div class="delete_product_nof-wp delete-warning ">
					<div class="nof-icon">
						<i class="fas fa-exclamation"></i>
					</div>
					<h1>Xóa sản phẩm sản phẩm?</h1>
					<span>Laptop Lenovo IdeaPad 5 Pro 16ACH6 82L50095VN Laptop
						Lenovo IdeaPad 5 Pro 16ACH6 82L50095VN </span>
					<div class="group-button">
						<button class="btn-delete-war-done">Xóa</button>
						<button class="btn-delete-done">Hủy</button>
					</div>
				</div>
				<div class="delete_product_nof-wp delete-success ">
					<div class="nof-icon">
						<i class="fas fa-check"></i>
					</div>
					<h1>Xóa sản phẩm thành công</h1>
					<span>Laptop Lenovo IdeaPad 5 Pro 16ACH6 82L50095VN Laptop
						Lenovo IdeaPad 5 Pro 16ACH6 82L50095VN </span>
					<button class="btn-delete-done">Xong</button>
				</div>
				<div class="delete_product_nof-wp delete-err">
					<div class="nof-icon">
						<i class="fas fa-times"></i>
					</div>
					<h1>Xóa sản phẩm thất bại</h1>
					<span>Laptop Lenovo IdeaPad 5 Pro 16ACH6 82L50095VN Laptop
						Lenovo IdeaPad 5 Pro 16ACH6 82L50095VN </span>
					<button class="btn-delete-done">Xong</button>
				</div>
			</div> -->

			<!-- <div class="edit_product blur-dark">
				<form action="" id="sp" class="edit_product-wp">
					<div class="form-heading">
						<div class="form-heading-left"></div>
						<div class="form-heading-center">Sửa sản phẩm</div>
						<div class="form-heading-right">
							<button class="btn-close-edit">
								<i class="fas fa-times"></i>
							</button>
						</div>
					</div>
					<div class="form-content">
						<div class="form-group">
							<label for="nameproduct"> Tên sản phẩm: </label> <input
								type="text" placeholder="Nhập tên sản phẩm" name="nameproduct"
								id="nameproduct" required>
						</div>
						<div class="form-group">
							<label for="qtyproduct"> Số lượng: </label> <input type="number"
								placeholder="Nhập số lượng sản phẩm" name="qtyproduct"
								id="qtyproduct" required>
						</div>
						<div class="form-group">
							<label for="priceproduct"> Tên sản phẩm: </label> <input
								type="number" placeholder="Nhập giá sản phẩm"
								name="priceproduct" id="priceproduct" required>
						</div>
						<div class="form-group">
							<label for="statusproduct"> Trạng thái: </label> <select
								name="statusproduct" id="statusproduct">
								<option selected>Chọn trạng thái</option>
								<option>Hàng cũ</option>
								<option>Hàng mới</option>
							</select>
						</div>
						<div class="form-group">
							<label for="categoryproduct"> Loại hàng: </label> <select
								name="categoryproduct" id="categoryproduct">
								<option selected>Chọn loại hàng</option>
								<option value="1">Bàn phím</option>
								<option value="2">Chuột</option>
								<option value="3">Laptop</option>
							</select>
						</div>
						<div class="form-group">
							<label for="decriptionproduct"> Mô tả sản phẩm: </label>
							<textarea id="motasp" name="decriptionproduct"
								placeholder="Nhập mô tả sản phẩm">
							
							</textarea>
						</div>
						<div class="form-group">
							<label for="imageproduct"> Hình ảnh: </label> <input type="file"
								placeholder="Nhập tên sản phẩm" name="imageproduct"
								id="imageproduct" required>
						</div>

						<div class="form-button">
							<button class="btn-edit">Sửa</button>
							<button class="btn-cancel">Hủy</button>
						</div>
					</div>
				</form>


				<div class="edit_product_nof">
					<div class="edit_product_nof-wp edit-success ">
						<div class="nof-icon">
							<i class="fas fa-check"></i>
						</div>
						<h1>Sửa sản phẩm thành công</h1>
						<button class="btn-edit-done">Xong</button>
					</div>
					<div class="edit_product_nof-wp edit-err">
						<div class="nof-icon">
							<i class="fas fa-times"></i>
						</div>
						<h1>Sửa sản phẩm thất bại</h1>
						<button class="btn-edit-done">Xong</button>
					</div>
				</div>
			</div> -->

			<div class="manage-product">
				<!-- <div class="title-page">Quản lý sản phẩm</div> -->
				<div class="manage-product-wp">

					<!-- add-product -->
					<div class="add_product">
						<div class="add_product-heading">Thêm sản phẩm</div>
						<form action="" class="fAdd-product" id="fAdd-product"
							enctype="multipart/form-data">
							<div class="input_form">
								<label id="lblID" for="idproduct" class="name">Mã sản
									phẩm </label> <input id="IDSP" type="text" name="idproduct"
									placeholder="Tên sản phẩm" required readonly="readonly">
								<label for="nameproduct" class="name">Tên </label> <input
									id="tensp" type="text" name="nameproduct"
									placeholder="Tên sản phẩm" required>
							</div>
							<div class="input_form">
								<label for="soluong" class="name">giảm giá</label> <input
									id="deal" type="number" name="soluong" placeholder="Giảm giá"
									min="0">
							</div>
							<div class="input_form">
								<label for="gia" class="name">Giá</label> <input id="giasp"
									type="number" name="gia" placeholder="Nhập giá">
							</div>
							<div class="input_form">
								<label for="status" class="name">Trạng thái</label> <select
									name="status" id="trangthaisp">
									<option value="" selected>Chọn...</option>
									<option value="0">Hết hàng</option>
									<option value="1">Còn hàng</option>
								</select>
							</div>
							<div class="input_form">
								<label for="dropdown" class="name">Tên nhãn hiệu</label> <select
									id="manh" name="dropdown">
									<option value="" selected>Chọn nhãn hiệu...</option>
									<c:forEach var="item" items="${listNH}">
										<option value="${item.manh}">${item.tennh}</option>
									</c:forEach>

								</select>
							</div>

							<div class="input_form">
								<label for="dropdown" class="name">Loại</label> <select
									name="dropdown" id="maloai">
									<option value="" selected>Chọn thể loại...</option>
									<c:forEach var="item" items="${listLH}">
										<option value="${item.maloai}">${item.tenloai}</option>
									</c:forEach>

								</select>
							</div>
							<div class="input_form">
								<label for="mota" class="name">Mô tả</label>
								<textarea name="mota" id="motasp"
									placeholder="Mô tả sản phẩm..." cols="30" rows="7"></textarea>
							</div>
							<div class="input_form">
								<!-- <div class="border_image">
            <div class="image">
                <img src="#" alt="">
            </div>
            <div class="center">
                <ion-icon name="cloud-upload"></ion-icon>
                <span class="image_file">Imge File</span>
            </div>
        </div> -->
								<label for="hinh" class="name">Hình</label>
								<div class="button_file">
									<input type="file" id="fileSP" name="fileSP" accept="image/*">
									<label id="lblHinh" class="name"></label>
									<!-- <label for="file">
                    <i class="far fa-image"></i> &nbsp;
                    Choose a Photo
                </label> -->
								</div>
							</div>
							<div class="group-button-add">
								<button id="add-product" class="add-product">Thêm</button>
								<button id="update-product" class="add-product">Cập
									nhật</button>
								<button class="add-cancel">Hủy</button>
							</div>
						</form>
					</div>
					<!-- list product -->
					<div class="list-product">
						<div class="manage-customer-heading">
							<div class="customer-heading-left">Danh sách sản phẩm</div>
							<div class="customer-heading-center">
								<form action="./productTimkiem">
									<div class="searchbox">
										<input type="text" class="search-input" name="tensp"
											placeholder="Nhập tên sản phẩm, hoặc id sản phẩm">
										<button class="search-button">
											<i class="fas fa-search"></i>
										</button>
									</div>
								</form>
							</div>
							<div class="customer-heading-right">
								<div class="btn-showAction">
									<p>Hành động</p>
									<i class="fas fa-angle-down"></i>
									<div class="action-content blur-white-md">
										<form action="./excelSP" method="get">
											<button class="export-file">
												<i class="fas fa-file-export"></i>Xuất file
											</button>
										</form>
									</div>
								</div>


								<div class="pagination">
									<div class="pagination-left">
										<span id="countPage">${pageCount.getCount()+1}</span> <i
											class="fas fa-circle"></i>
									</div>
									<div class="pagination-right">
										<button class="btn-prev">
											<i class="fas fa-angle-left"></i>
										</button>
										<button class="btn-next">
											<i class="fas fa-angle-right"></i>
										</button>
									</div>
								</div>
							</div>
						</div>
						<table>
							<tr>
								<th>Mã SP</th>
								<th>Tên</th>
								<th>Giá</th>
								<th>Trạng thái</th>
								<th>Nhãn hiệu</th>
								<th>Hình ảnh</th>
								<th></th>
							</tr>
							<c:forEach var="item" items="${listProductAD.content}">
								<tr>
									<td>${item.masp}</td>
									<td>${item.tensp}</td>
									<td>${item.gia}</td>
									<td><c:choose>
											<c:when test="${item.tinhtrang == true }">còn hàng</c:when>
											<c:otherwise>hết hàng</c:otherwise>
										</c:choose></td>
									<td><span class="status delivered"> <c:forEach
												var="nh" items="${listNH}">
												<c:if test="${item.manh == nh.manh}">${nh.tennh}</c:if>

											</c:forEach>
									</span></td>
									<td>
										<div class="images">
											<img src="./../assets/img/sanpham/${item.hinh}" alt=""
												width="50px">
										</div>
									</td>
									<td>
										<div class="dropdown">
											<button class="dropbtn">
												<i class="fas fa-ellipsis-h"></i>
											</button>
											<div class="dropdown-content">
												<button onclick="editSP(${item.masp})" class="btn-showEdit">
													<i class="far fa-edit"></i>
													<p>Sửa</p>
												</button>
												<button onclick="delectSP(${item.masp})" class="btn-delete">
													<i class="far fa-trash-alt"></i>
													<p>Xóa</p>
												</button>
											</div>
										</div>
									</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
</body>
<!--Link icon-->

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<!-- 	<script src="../assets/js/admin/nhanhieu.js"></script>
	<script src="../assets/js/admin/loaihang.js"></script> -->
<script src="../assets/js/admin/sanpham.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>


</html>