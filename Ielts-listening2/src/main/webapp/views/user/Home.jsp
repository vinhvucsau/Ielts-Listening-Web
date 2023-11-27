<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="height: 700px" class="d-flex flex-column">
		<span>${currentUser.userId}</span>
		<span>${currentUser.name}</span>
		<span>${currentUser.sex}</span>
		<span>${currentUser.email}</span>
		<span>${currentUser.image }</span>
		
		<span>HOME</span>
	</div>
</body>
</html>