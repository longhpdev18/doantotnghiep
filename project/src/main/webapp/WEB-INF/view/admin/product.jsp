<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<html lang="en">

<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Admin</title>
<!--CSS-->
<!--     <link rel="stylesheet" href="./../assets/css/admin/index.css">
    <link rel="stylesheet" href="./../assets/css/admin/listProduct.css">
    <link rel="stylesheet" href="./../assets/css/admin/product.css">
   
    <link rel="stylesheet" href="./../assets/css/admin/2.css"> -->

<link rel="stylesheet" href="./../assets/css/admin/responsive.css">
<link rel="stylesheet" href="./../assets/css/admin/style.css">
<link rel="stylesheet" href="./../assets/css/admin/unilities.css">

<script src="../assets/js/admin/product.js"></script>
<!-- BOXICON -->
<script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<!--LINE AWSOME-->
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
</head>

<body>
	<div class="container">
		<jsp:include page="navigation.jsp"></jsp:include>
		<div class="main">
			<jsp:include page="topbar.jsp"></jsp:include>

			<div class="manage-product">
				<div class="title-page">Quản lý sản phẩm</div>
				<div class="manage-product-wp">

					<!-- add-product -->
					<div class="add_product">
						<div class="add_product-heading">Thêm sản phẩm</div>
						<form action="" class="fAdd-product">
							<div class="input_form">
								<label for="nameproduct" class="name">Tên </label> <input
									type="text" name="nameproduct" placeholder="Tên sản phẩm"
									required>
							</div>
							<div class="input_form">
								<label for="soluong" class="name">Số lượng</label> <input
									type="number" name="soluong" placeholder="Số lượng" min="1"
									required>
							</div>
							<div class="input_form">
								<label for="gia" class="name">Giá</label> <input type="number"
									name="gia" placeholder="Nhập giá" required>
							</div>
							<div class="input_form">
								<label for="status" class="name">Trạng thái</label> <select
									name="status">
									<option value="Maths" selected>Chọn...</option>
									<option value="Physics">Hàng mới</option>
									<option value="Physics">Hàng cũ</option>
								</select>
							</div>
							<div class="input_form">
								<label for="dropdown" class="name">Loại</label> <select
									name="dropdown">
									<option value="Maths" selected>Chọn thể loại...</option>
									<option value="Physics">Màn hình</option>
									<option value="Physics">Bàn phím</option>
								</select>
							</div>
							<div class="input_form">
								<label for="mota" class="name">Mô tả</label>
								<textarea name="mota" id="subject"
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
								<div class="button_file">
									<input type="file" id="file" accept="image/*">
									<!-- <label for="file">
                    <i class="far fa-image"></i> &nbsp;
                    Choose a Photo
                </label> -->
								</div>
							</div>
							<div class="group-button-add">
								<button class="add-product">Thêm</button>
								<button class="add-cancel">Hủy</button>
							</div>
						</form>
					</div>
					<!-- list product -->
					<div class="list-product">
						<div class="list-product-heading">Danh sách sản phẩm</div>
						<table>
							<tr>
								<th>Mã SP</th>
								<th>Tên</th>
								<th>Giá</th>
								<th>Trạng thái</th>
								<th>Loại</th>
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
									<td><span class="status delivered">${item.maloai}</span></td>
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

												<a href="#">Xóa</a> <a href="#">Sửa</a>
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
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>


</html>