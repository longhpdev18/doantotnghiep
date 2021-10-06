<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<h1>hello</h1>
	<table border="1" style="width: 100%">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Loại</th>
			<th>Nhãn Hiệu</th>
			<th>Gía</th>
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