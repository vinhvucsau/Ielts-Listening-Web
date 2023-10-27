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
	<div style="height: 60px; background-color: red" class="header-admin">HEADER
		ADMIN</div>

	<div class="admin-taobode container-fluid p-0 m-0">
		<div class="row g-4">
			<div
				class="col col-8 admin-taobode-left position-relative text-center">
				<h1 class="text--title color-blue--primary">IELTS Essential
					Guide</h1>
				<p class="text--description lh-sm">Bộ đề Cam kinh điển đầy đủ
					giái thích đáp án chi tiết. Luyện đề IELTS Essential Guide mới nhất
					với đầy đủ 4 kỹ năng, giúp thí sinh tự tin khi va chạm với mọi dạng
					đề.</p>
				<a
					class="admin-taobode-btn bg-color-green--medium color-white text--h4 rounder-8 align-middle mx-auto"
					href="#" role="button">Tạo bộ đề</a>

				<div class="row g-4 danhsachbode">
				<!-- loop -->
				<c:forEach var="c" items="${listCourse }">
					<div class="bodethi">
						<button
							class="accordion d-flex justify-content-between align-items-center text--h3 color-white bg-color-blue--primary rounder-8">
							<span class="accordion-order">01</span> <span
								class="accordion-title ms-4">${listCourse.courseName}</span>
							<div class="icon-list d-flex ">
								<a href="#" class="icon-link icon-update"> <i
									class="fa-solid fa-pen me-4 color-white"></i>
								</a> <a href="#" class="icon-link icon-delete"> <i
									class="fa-solid fa-trash color-white"></i>
								</a>
							</div>
						</button>
						<!-- loop inner -->
						<c:forEach var = "l" items="${listLesson }">
							<div class="panel">
								<ul class="list p-0">
									<c:choose>
										<c:when test="${c.courseId == l.courses.courseId}">					
											<li class="item bg-color-blue--light mb-4 text--h3"><a
												class="item-link text-start" href="">${l.lessonName }</a>
												<div class="item-icon">
													<a href="#" class="icon-link icon-update"> <i
														class="fa-solid fa-pen me-4 color-blue--primary"></i>
													</a> <a href="#" class="icon-link icon-delete"> <i
														class="fa-solid fa-trash color-red--medium"></i>
													</a>
												</div>
											</li>
										</c:when>	
									</c:choose>
								</ul>
							</div>

						</c:forEach>
				</c:forEach>


					</div>
					
					
				</div>

				<div class="col col-4 admin-taobode-right"></div>
			</div>
		</div>

	</div>

	<script>
		var acc = document.getElementsByClassName("accordion");
		var i;

		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				this.classList.toggle("active");
				var panel = this.nextElementSibling;
				if (panel.style.display === "block") {
					panel.style.display = "none";
				} else {
					panel.style.display = "block";
				}
			});
		}
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>