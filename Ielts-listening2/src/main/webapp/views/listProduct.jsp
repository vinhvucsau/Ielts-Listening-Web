<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1" style="width: 100px">
		<tr>

			<td>productID</td>
				<td>productName</td>
				<td>description</td>
				<td>$price</td>
				<td>$imageLink</td>
				<td>$cateID</td>
				<td>sellerID</td>
				<td>amount</td>
				<td>stoke2</td>
		
		</tr>
		<c:forEach var="i" items="${list}">
			<tr>
				<td>${i.productID}</td>
				<td>${i.productName}</td>
				<td>${i.description}</td>
				<td>${i.price}</td>
				<td>${i.imageLink}</td>
				<td>${i.cateID}</td>
				<td>${i.sellerID}</td>
				<td>${i.amount}</td>
				<td>${i.stoke}</td>

				
			</tr>
		</c:forEach>
	</table>
</body>
</html>