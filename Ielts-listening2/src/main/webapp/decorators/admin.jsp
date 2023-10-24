<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here admin</title>
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
</head>
<body>
	<div>
		<%@ include file="/common/admin/Header.jsp"%>
		<div class="row ">
			<div class="col col-lg-3 fixed-left">
				<%@ include file="/common/admin/Left.jsp"%></div>
			<div class="col col-lg-9">
				<decorator:body>
				</decorator:body>
			</div>
		</div>
		<%@ include file="/common/admin/Footer.jsp"%>
	</div>
</body>
</html>