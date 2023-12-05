<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Long count = (Long) request.getAttribute("countCourse");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page import="javax.servlet.jsp.PageContext"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>

	<style>
.dropdown-item:hover {
	background-color: #0071f9 !important;
	color: white;
}

.adminkhoahoc-course--detail:hover {
	cursor: pointer;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.adminkhoahoc-course--detail {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.05);
}

.card-text {
	display: -webkit-box;
	overflow: hidden;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.adminkhoahoc-course--detail {
	margin-bottom: 60px;
	margin-right: 40px;
}

.button-delete-course:hover {
	color: red;
}
</style>


	<div class="adminkhoahoc container-fluid p-0 m-0 row">

		<h1 class="adminkhoahoc-title text-center mb-4">
			Lộ Trình Học <span class="color-blue--primary">IELTS</span> Toàn
			Diện
		</h1>
		<div class="adminkhoahoc-description w-75 text-center mx-auto mb-3">
			<span style="color: rgb(113, 113, 113)">Lorem ipsum dolor sit
				amet consectetur. Cras ultricies sapien venenatis vulputate felis.
				Non hendrerit lectus enim semper et nisl nunc lobortis ultrices.</span>
		</div>
		<div
			class="adminkhoahoc-button d-flex flex-row justify-content-center">
			<button type="button" class="btn mb-5"
				style="background-color: rgb(0, 177, 53)">
				<span style="color: white">Thêm Khóa Học</span>
			</button>
		</div>

		<div>
			<div class="d-flex flex-row justify-content-between mb-4">

				<div class="adminkhoahoc-soluong">
					<h5 class="adminkhoahoc-filter-sumcourse my-1">
						<p style="color: rgb(101, 101, 101)" class="my-auto"><%=count%>
							Khóa Học
						</p>
					</h5>
				</div>

				<div class="adminkhoahoc-filter d-flex justify-content-between"
					style="width: 500px">
					<div class="d-flex  adminkhoahoc-filter--rate ">
						<p class="my-auto">Rate:</p>
						<div class="dropdown dropdown-rate my-auto ms-2">
							<button
								class="btn bg-color-white dropdown-toggle border border-secondary-subtle"
								type="button" data-bs-toggle="dropdown" aria-expanded="false"
								style="width: 160px">
								<!-- 								<span class="me-3">Mặc định</span>
 -->
								<c:choose>
									<c:when test="${param.rate == 'thapdencao'}">
										<span class="me-3">Thấp đến cao</span>
									</c:when>
									<c:when test="${param.rate == 'caodenthap'}">
										<span class="me-3">Cao đến thấp</span>
									</c:when>
									<c:otherwise>
										<span class="me-3">Mặc định</span>
									</c:otherwise>
								</c:choose>
							</button>
							<ul class="dropdown-menu bg-color-grey">
								<li><a class="dropdown-item"
									href="/Ielts-listening2/admin/khoahoc?rate=caodenthap">Cao
										đến thấp</a></li>
								<li><a class="dropdown-item"
									href="/Ielts-listening2/admin/khoahoc?rate=thapdencao">Thấp
										đến cao</a></li>
								<li><a class="dropdown-item"
									href="/Ielts-listening2/admin/khoahoc">Mặc định</a></li>
							</ul>
						</div>
					</div>

					<div class="d-flex  adminkhoahoc-filter--gia ">
						<p class="my-auto">Giá:</p>
						<div class="dropdown dropdown-gia my-auto ms-2">
							<button
								class="btn bg-color-white dropdown-toggle border border-secondary-subtle "
								type="button" data-bs-toggle="dropdown" aria-expanded="false"
								style="width: 160px">
								<c:choose>
									<c:when test="${param.gia == 'thapdencao'}">
										<span class="me-3">Thấp đến cao</span>
									</c:when>
									<c:when test="${param.gia == 'caodenthap'}">
										<span class="me-3">Cao đến thấp</span>
									</c:when>
									<c:otherwise>
										<span class="me-3">Mặc định</span>
									</c:otherwise>
								</c:choose>


							</button>
							<ul class="dropdown-menu bg-color-grey"
								aria-labelledby="navbarLanding">
								<li><a class="dropdown-item justify-content-between"
									href="/Ielts-listening2/admin/khoahoc?gia=caodenthap">Cao
										đến thấp</a></li>
								<li><a class="dropdown-item justify-content-between"
									href="/Ielts-listening2/admin/khoahoc?gia=thapdencao">Thấp
										đến cao</a></li>
								<li><a class="dropdown-item justify-content-between"
									href="/Ielts-listening2/admin/khoahoc">Mặc định</a></li>
							</ul>
						</div>
					</div>


				</div>

			</div>
			<div class="container-fluid p-0 m-0 ">
				<div class="adminkhoahoc-course d-flex flex-wrap">
					<c:forEach var="i" items="${course}">
						<div style="position:relative;">
							<a href="/Ielts-listening2/admin/listLesson?courseId=${i.courseId}"> <!-- <div class="d-flex justify-content-center"> -->
								<div class="card adminkhoahoc-course--detail"
									style="width: 14rem;">

									<img style="cursor: pointer" src="${i.image }" width="100%"
										height="150px" />
									<div class="card-body adminkhoahoc-course--detail--info pb-0">
										<div class="d-flex justify-content-between">
											<p class="card-text text--h3 fs-5 my-0 py-2">${i.courseName}</p>

										</div>
										<p class="card-text" style="color: rgb(113, 113, 113)">${i.description}</p>
									</div>
									<div
										class="card-body adminkhoahoc-course--detail--cost mt-2 py-0 d-flex justify-content-between align-item-center">
										<p class="card-text color-blue--primary fw-bold fs-5">${i.cost}</p>
										<p class="card-text fw-bold fs-5"
											style="color: rgb(113, 113, 113)">VND</p>
									</div>
									<div class="d-flex justify-content-between">
										<c:forEach var="lesson" items="${i.lessons}">
											<c:forEach var="enrrol_lesson"
												items="${lesson.enrrolLesson }">


												<c:set var="totalStars" value="0" />
												<c:set var="count" value="0" />
												<c:forEach var="lesson" items="${i.lessons}">
													<c:forEach var="enrrol_lesson"
														items="${lesson.enrrolLesson}">
														<c:set var="totalStars"
															value="${totalStars +enrrol_lesson.numberOfStar}" />
														<c:set var="count" value="${count + 1}" />
													</c:forEach>
												</c:forEach>
												<c:choose>
													<c:when test="${count > 0}">
														<c:set var="averageStars" value="${totalStars / count}" />
														<c:set var="roundedAverage">
															<c:out
																value="${(averageStars - (averageStars mod 1)) + (averageStars mod 1 > 0 ? 1 : 0)}" />
														</c:set>
													</c:when>
												</c:choose>
											</c:forEach>
										</c:forEach>
										<div class="stars rating-star ps-3 "
											data-rating="${roundedAverage}"></div>
										<div class="rating-avg pe-3">${roundedAverage}</div>
									</div>
									<!-- </div> -->
								</div>
							</a> 
							<a href="/Ielts-listening2/admin/deletecourse?courseId=${i.courseId}"
								style="position: absolute; top: 175px; left: 170px;">
								<button class="btn btn-sm rounded-0 button-delete-course"
									type="button" data-toggle="tooltip" data-placement="top"
									title="Delete">
									<i class="fa fa-trash"></i>
								</button>
							</a>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	<script>
	    document.querySelectorAll('.stars').forEach(starContainer => {
	        const rating = parseInt(starContainer.getAttribute('data-rating'));
	        starContainer.innerHTML = getStarRating(rating);
	    });
	
	    function getStarRating(rating) {
	        let stars = '';
	        for (let i = 0; i < 5; i++) {
	            if (i < rating) {
	                stars += '⭐'; 
	            } else {
	                stars += '★'; 
	            }
	        }
	        return stars;
	    }
	</script>
</body>
</html>