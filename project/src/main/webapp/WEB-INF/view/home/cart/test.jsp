<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1" style="width:100%">
	<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Price</th>
		<th>Quantity</th>
		<th>Amount</th>
		<th></th>
		<th></th>
		
	</tr>
<c:forEach var="item" items="${cart.items}">
	<tr>
		<td>${item.masp}</td>
		<td>${item.tensp}</td>
		<td>${item.gia}</td>
		<td><input name="qty" value="${item.qty}" 
				onblur="this.form.submit()" style="width:50px;"></td>
		<td>${item.gia * item.qty}</td>
		<td>
			<button>Update</button>
		</td>
		<td>
			<a href="/cart/remove/${item.masp}">Remove</a>
		</td>
		
	</tr>

</c:forEach>
</table>
</body>
</html>