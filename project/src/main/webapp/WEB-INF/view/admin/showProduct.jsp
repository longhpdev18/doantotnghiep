<%@ page pageEncoding="utf-8"%>

<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="details">
	<!-- details list-->
	<div class="recentOrders">
		<div class="cardHeader">
			<h2>Sản Phẩm</h2>
			<div class="search_tb">
				<input type="text" placeholder="Search..." name="search">
			</div>
			<a href="" class="btn"> <ion-icon name="trash"></ion-icon> Xóa
				tất cả
			</a>
		</div>
		<table>
			<thead>
				<tr>
					<td><input type="checkbox" onclick='checkUncheck(this)'>
						All</td>
					<td>Mã SP</td>
					<td>Tên</td>
					<td>Giá</td>
					<td>Trạng thái</td>
					<td>Loại</td>
					<td>Hình ảnh</td>
					<td></td>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="checkbox" name="lang" class="chkboxname"></td>
					<td>1</td>
					<td>Start Refrigerator</td>
					<td>$1200</td>
					<td>Mới</td>
					<td><span class="status delivered">Bàn phím</span></td>
					<td>
						<div class="images">
							<img
								src="https://betanews.com/wp-content/uploads/2014/11/front.jpg"
								alt="">
						</div>
					</td>
					<td>
						<div class="dropdown">
							<button class="dropbtn">
								<i class="fas fa-ellipsis-v"></i>
							</button>
							<div class="dropdown-content">
								<a href="./product.html">Thêm</a> <a href="#">Xóa</a> <a
									href="./product.html">Sửa</a>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="lang" class="chkboxname"></td>
					<td>2</td>
					<td>Start Refrigerator</td>
					<td>$1200</td>
					<td>Mới</td>
					<td><span class="status pending">Màn hình</span></td>
					<td>
						<div class="images">
							<img
								src="https://betanews.com/wp-content/uploads/2014/11/front.jpg"
								alt="">
						</div>
					</td>
					<td>
						<div class="dropdown">
							<button class="dropbtn">
								<i class="fas fa-ellipsis-v"></i>
							</button>
							<div class="dropdown-content">
								<a href="./product.html">Thêm</a> <a href="#">Xóa</a> <a
									href="./product.html">Sửa</a>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="lang" class="chkboxname"></td>
					<td>3</td>
					<td>Start Refrigerator</td>
					<td>$1200</td>
					<td>Mới</td>
					<td><span class="status delivered">Chuột có dây</span></td>
					<td>
						<div class="images">
							<img
								src="https://betanews.com/wp-content/uploads/2014/11/front.jpg"
								alt="">
						</div>
					</td>
					<td>
						<div class="dropdown">
							<button class="dropbtn">
								<i class="fas fa-ellipsis-v"></i>
							</button>
							<div class="dropdown-content">
								<a href="./product.html">Thêm</a> <a href="#">Xóa</a> <a
									href="./product.html">Sửa</a>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="lang" class="chkboxname"></td>
					<td>4</td>
					<td>Start Refrigerator</td>
					<td>$1200</td>
					<td>Mới</td>
					<td><span class="status return">Màn hình</span></td>
					<td>
						<div class="images">
							<img
								src="https://betanews.com/wp-content/uploads/2014/11/front.jpg"
								alt="">
						</div>
					</td>
					<td>
						<div class="dropdown">
							<button class="dropbtn">
								<i class="fas fa-ellipsis-v"></i>
							</button>
							<div class="dropdown-content">
								<a href="./product.html">Thêm</a> <a href="#">Xóa</a> <a
									href="./product.html">Sửa</a>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="lang" class="chkboxname"></td>
					<td>5</td>
					<td>Start Refrigerator</td>
					<td>$1200</td>
					<td>Mới</td>
					<td><span class="status delivered">Bàn phím</span></td>
					<td>
						<div class="images">
							<img
								src="https://betanews.com/wp-content/uploads/2014/11/front.jpg"
								alt="">
						</div>
					</td>
					<td>
						<div class="dropdown">
							<button class="dropbtn">
								<i class="fas fa-ellipsis-v"></i>
							</button>
							<div class="dropdown-content">
								<a href="./product.html">Thêm</a> <a href="#">Xóa</a> <a
									href="./product.html">Sửa</a>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="lang" class="chkboxname"></td>
					<td>6</td>
					<td>Start Refrigerator</td>
					<td>$1200</td>
					<td>Cũ</td>
					<td><span class="status inprogress">Bàn phím</span></td>
					<td>
						<div class="images">
							<img
								src="https://betanews.com/wp-content/uploads/2014/11/front.jpg"
								alt="">
						</div>
					</td>
					<td>
						<div class="dropdown">
							<button class="dropbtn">
								<i class="fas fa-ellipsis-v"></i>
							</button>
							<div class="dropdown-content">
								<a href="./product.html">Thêm</a> <a href="#">Xóa</a> <a
									href="./product.html">Sửa</a>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><input type="checkbox" name="lang" class="chkboxname"></td>
					<td>7</td>
					<td>Start Refrigerator</td>
					<td>$1200</td>
					<td>Mới</td>
					<td><span class="status delivered">Màn hình</span></td>
					<td>
						<div class="images">
							<img
								src="https://betanews.com/wp-content/uploads/2014/11/front.jpg"
								alt="">
						</div>
					</td>
					<td>
						<div class="dropdown">
							<button class="dropbtn">
								<i class="fas fa-ellipsis-v"></i>
							</button>
							<div class="dropdown-content">
								<a href="./product.html">Thêm</a> <a href="#">Xóa</a> <a
									href="./product.html">Sửa</a>
							</div>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
		<!--pagination-->
		<div class="pagination">
			<a href="#"><i class="fas fa-chevron-left"></i></a> <a href="#">1</a>
			<a href="#" class="active">2</a> <a href="#">3</a> <a href="#">4</a>
			<a href="#">5</a> <a href="#"><i class="fas fa-chevron-right"></i></a>
		</div>
	</div>
</div>