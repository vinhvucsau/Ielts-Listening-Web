<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<!-- chua duong dan cac file le rieng  -->
    <link href="<c:url value='/views/luyende/css/styleLuyenDeTest.css' />" rel="stylesheet" type="text/css"> 
    <link href='<c:url value="/assets/fonts/themify-icons/themify-icons.css" />' rel="stylesheet" type="text/css">
    <link href='<c:url value="/stylecss/base/base.css" />' rel="stylesheet"
	type="text/css">
	<link href='<c:url value="/stylecss/base/colorstyle.css" />' rel="stylesheet"
	type="text/css">
	<link href='<c:url value="/stylecss/base/spaces.css" />' rel="stylesheet"
	type="text/css">
	<link href='<c:url value="/stylecss/base/textstyle.css" />' rel="stylesheet"
	type="text/css">
	<title>Insert title here</title>
</head>
<body >
	<%@ include file="/common/user/Header.jsp"%>

	<div >
		<decorator:body>		
		</decorator:body>
	</div>
		
	<%@ include file="/common/user/Footer.jsp"%>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>