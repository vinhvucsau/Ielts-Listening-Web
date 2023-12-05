<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<div style="height: 60px; background-color: red" class="header-admin">HEADER ADMIN</div>

	<div class="AdminLesson container-fluid p-0 m-0">
		<div class="row g-4">
			<button class="backward w-4">
				<a href="#" class="backward__text"
					id="" value=""> <i class="fa-solid fa-turn-down-left color-blue--primary"></i> Quay về
				</a>
			</button>
			<div
				class="col col-8 AdminLesson-left position-relative text-center">
				<h1 class="text--title color-blue--primary">Nội dung khóa học</h1>
				<div class="row g-4 course-content">
					<!-- loop -->
					<c:forEach var="i" items="${listLesson }">
						<div class="list-lesson">
							<button value="${i.lessonId}"
								class="accordion d-flex justify-content-between align-items-center text--h3 color-white bg-color-blue--primary rounder-8">
								<span class="accordion-order"></span> 
								<span class="accordion-title ms-4">${i.lessonName})</span>
							
								<div class="icon-list d-flex ">
									<a href="#" class="btn-openpopup icon-link icon-update"
										value="${i.lessonId }"> <i
										class="fa-solid fa-pen me-4 color-white"></i>
									</a> <a href="<c:url value='/admin/deleteLesson?id=${i.lessonId}'/>"
										class="icon-link icon-delete"> <i
										class="fa-solid fa-trash color-white"></i>
									</a>
								</div>
							</button>
						</div>
					</c:forEach>
				</div>
				<form action="addLesson" method="post">
					<input value="Chapter1" name="lessonName">
					<input value="Course1040" name="courses.courseId">
					<input type="submit" value="Thêm bài học mới">	
				</form>
				<!-- <a
					class="AdminLesson-btn bg-color-green--medium color-white text--h4 rounder-8 align-middle mx-auto"
					href="#" role="button" id="btn-open-popup">Thêm bài học mới</a> -->
			</div>
		</div>
	</div>

	<c:if test="${not empty messSuccess }">${messSuccess}</c:if>
	<c:if test="${not empty messError }">${messError}</c:if>
	<h2>${messSuccess}</h2>
	<h2>${messError}</h2>
	

	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>