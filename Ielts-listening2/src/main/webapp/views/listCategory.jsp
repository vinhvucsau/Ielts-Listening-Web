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
	
	<div>
		<span>
			<c:if test="${message != null }">
			${message}
			</c:if>
		</span>
	</div>
	<span> 
		<a href="<c:url value='/addcate' />">Add Category</a>
	</span>
	<table border="1" style="width: 100px">
		<tr>
			<td>ID</td>
			<td>CateName</td>
			<td>Icon</td>
			<td>Action</td>
		</tr>
		<c:forEach var="i" items="${list}">
			<tr>
				<td>${i.cateID}</td>
				<td>${i.cateName}</td>
				<td>${i.image}</td>
				<td><a href="<c:url value='/update?id=${i.cateID}' />">Update Category</a> || 
				<a href="<c:url value='/delete?id=${i.cateID}' />">delete</a>
				<a href="<c:url value='/find?id=${i.cateID}' />">find</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>