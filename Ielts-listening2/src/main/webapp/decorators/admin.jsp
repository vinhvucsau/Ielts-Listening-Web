<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here admin</title>
<link rel="stylesheet"
	href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
</head>
<body>
	<div>
		<%@ include file="/common/admin/Header.jsp"%>
		<div class="grid grid-cols-5">
			<div class="col-span-1">
				<%@ include file="/common/admin/Left.jsp"%></div>
			<div class="col-span-4">
				<decorator:body>
				</decorator:body>
			</div>
		</div>
		<%@ include file="/common/admin/Footer.jsp"%>
	</div>
</body>
</html>