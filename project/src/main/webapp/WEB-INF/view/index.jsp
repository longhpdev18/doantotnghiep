<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<table border="1" style="width: 100%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Loai</th>
			<th>nhãn hiệu</th>
			<th>Giá</th>
			<th>Mô tả</th>
			<th>Tình trạng</th>
			<th>hình</th>
		</tr>
		<c:forEach var="item" items="${items}">
			<tr>
				<td>${item.masp}</td>
				<td>${item.tensp}</td>
				<td>${item.maloai}</td>
				<td>${item.manh}</td>
				<td>${item.gia}</td>
				<td>${item.mota}</td>
				<td>${item.tinhtrang}</td>
				<td>${item.hinh}</td>				
			</tr>
		</c:forEach>
	</table>
</body>
</html>