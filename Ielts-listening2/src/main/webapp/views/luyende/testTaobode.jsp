<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>


	<table border="1" style="width: 500px">
		<tr>
			<td>Category ID</td>
			<td>Category Name</td>
			<td>Icon</td>
			<td>Update</td>
			<td>Delete</td>
			<td>Products</td>
			<td>Quantity</td>
		</tr>
		<c:forEach var="i" items="${listCourse}">
			<tr>
				<td>${i.courseId}</td>
				<td>${i.courseName}</td>
				<td>${i.description}</td>
                <td><a href="<c:url value='/update?id=${i.courseId}'/>">Update</a></td>
				<td><a href="<c:url value='/delete?id=${i.courseId}'/>">Delete</a></td>
				<td><a href="<c:url value='/productOfCategory?id=${i.courseId}'/>">View</a></td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>