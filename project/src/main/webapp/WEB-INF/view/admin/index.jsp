<%@ page pageEncoding="utf-8"%>
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
			<th>tên đăng nhập</th>
			<th>mật khẩu</th>
			<th>chức vụ</th>
		</tr>
		<c:forEach var="item" items="${items}">
			<tr>
				<td>${item.manv}</td>
				<td>${item.tendangnhap}</td>
				<td>${item.matkhau}</td>
				<td>${item.chucvu}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>