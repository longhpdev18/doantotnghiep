<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Sorting</title>


<!-- JQUERY -->
<!-- BOXICON -->
<script src="https://unpkg.com/boxicons@2.0.9/dist/boxicons.js"></script>
<!-- FONT ANWESOME -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css" />
<!--LINE AWSOME-->
<link rel="stylesheet"
	href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
	<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	
	<h3>Nhãn Hiệu</h3>
	<table border="1" style="width: 100%">
		<tr>
			<th>Id</th>
			<th>Name</th>
		</tr>
		<c:forEach var="item" items="${listNH.content}">
			<tr>
				<td>${item.manh}</td>
				<td>${item.tennh}</td>
			</tr>
		</c:forEach>
	</table>
	
	<h3>LoaiHang</h3>
	<table border="1" style="width: 100%">
		<tr>
			<th>Id</th>
			<th>Name</th>
		</tr>
		<c:forEach var="item" items="${listLH.content}">
			<tr>
				<td>${item.maloai}</td>
				<td>${item.tenloai}</td>
			</tr>
		</c:forEach>
	</table>
	
	<h3>NhanVien</h3>
	<table border="1" style="width: 100%">
		<tr>
			<th>Id</th>
			<th>tên đăng nhập</th>
			<th>mật khẩu</th>
			<th>chức vụ</th>
		</tr>
		<c:forEach var="item" items="${listNV.content}">
			<tr>
				<td>${item.manv}</td>
				<td>${item.tendangnhap}</td>
				<td>${item.matkhau}</td>
				<td>${item.chucvu}</td>
			</tr>
		</c:forEach>
	</table>
	
	<h3>KhachHang</h3>
	<table border="1" style="width: 100%">
		<tr>
			<th>Id</th>
			<th>tên đăng nhập</th>
			<th>tên</th>
			<th>email</th>
		</tr>
		<c:forEach var="item" items="${listKH.content}">
			<tr>
				<td>${item.makh}</td>
				<td>${item.tendangnhap}</td>
				<td>${item.fullname}</td>
				<td>${item.email}</td>
			</tr>
		</c:forEach>
	</table>
	
	<h3>HoaDon</h3>
	<table border="1" style="width: 100%">
		<tr>
			<th>Id</th>
			<th>mã khách hàng</th>
			<th>tên người nhận</th>
			<th>Date</th>
		</tr>
		<c:forEach var="item" items="${listHD.content}">
			<tr>
				<td>${item.mahd}</td>
				<td>${item.makh}</td>
				<td>${item.tennguoinhan}</td>
				<td>${item.ngaymua}</td>
			</tr>
		</c:forEach>
	</table>
	
		<h3>HoaDonCT</h3>
	<table border="1" style="width: 100%">
		<tr>
			<th>IdCT</th>
			<th>mã HD</th>
			<th>mã sản phẩm</th>
			<th>giá</th>
		</tr>
		<c:forEach var="item" items="${listHDCT.content}">
			<tr>
				<td>${item.mahdct}</td>
				<td>${item.mahd}</td>
				<td>${item.masp}</td>
				<td>${item.dongia}</td>
			</tr>
		</c:forEach>
	</table> 

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
<script src="../assets/js/admin/TestAPI.js"></script>
<script src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons.js"></script>
<script src="../assets/js/admin/app.js"></script>
<script src="../assets/js/admin/hovered.js"></script>
</html>