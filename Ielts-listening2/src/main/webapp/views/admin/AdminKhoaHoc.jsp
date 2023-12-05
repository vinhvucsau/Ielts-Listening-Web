<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Long count = (Long) request.getAttribute("countCourse");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/common/taglib.jsp"%>


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
			<button href="#" type="button" class="btn mb-5" onclick="showModel()"
				style="background-color: rgb(0, 177, 53)">
				<span style="color: white">Thêm Khóa Học</span>
			</button>
			
		</div>
		
		<!-- Model -->
		<div id="model"
			style="max-width: 800px; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); z-index: 3; display: none;">
			<form action="insertCourse" method="POST" enctype="multipart/form-data" >
				<div id="test-l-1" class="bs-stepper-pane"
					aria-labelledby="courseFormtrigger1">
					<!-- Card -->
					<div class="card mb-3">
						<div class="card-header border-bottom px-4 py-3">
							<h4 class="mb-0">Tạo khóa học mới</h4>
						</div>
						<!-- Card body -->
						<div style="max-height: 450px" class=" overflow-auto">
							<div class="card-body">
								<div class="mb-3">
									<label for="courseName" class="form-label">Tên khóa học</label>
										<input id="" name="courseName"
										class="form-control" type="text" placeholder="Tên khóa học"
										required> <small>Write a 60 character course
										title.</small>
								</div>
								<div class="mb-3">
								   <label class="form-label">Mô tả</label>
								   <textarea class="form-control" name="description" aria-label="With textarea"></textarea>
								 </div>
								<div class="d-flex align-items-center justify-content-between">
									<div style="min-width: 350px" class="mb-3">
										<label for="fee" class="form-label">Học phí</label>
										<input id="" name="cost"
											class="form-control" type="text" placeholder="Học phí" required>
									</div>
											
									<div style="min-width: 350px" class="mb-3">
										<label class="form-label" for="startdate">Ngày bắt đầu</label> 
										<input class="form-control flatpickr" type="text"
										placeholder="Start date" id="" name="enrrollmentDate" 
										data-mdb-toggle="datepicker" required/>
									</div>
								</div>
								
								<div class="mb-3">
									<label class="form-label">Thêm ảnh bìa</label> 
									<input type="file" class="form-control"
											name="image" id=""
											accept="image/jpeg, image/png" require>
								</div>

								<div class="mb-3">
									<label class="form-label">Thêm video xem trước</label> 
									<input type="file" class="form-control" 
											name="trailer" id=""
											accept="video/mp4" require>
									<div id="audio"></div>
								</div>
							</div>

						</div>
						<!-- Button -->
						<button margin: 10px"
						class="btn btn-primary" type="submit" onclick="show()">Xác
							nhận</button>
					</div>
				</div>
			</form>
		</div>
		<div id="shadow"
		class="position-absolute top-0 start-0 bottom-0 end-0 bg-dark"
		style="opacity: 0.5; display: none; z-index: 2" onclick="hideShadow()"></div>
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
						<div class=" d-flex justify-content-center">
							<div class="card adminkhoahoc-course--detail"
								style="width: 14rem;">
								<img style="cursor: pointer" src="${i.image }" width="100%"
									height="150px" />
								<div class="card-body adminkhoahoc-course--detail--info pb-0">
									<div class="d-flex justify-content-between">
										<p class="card-text text--h3 fs-5 my-0 py-2">${i.courseName}</p>
										<a
											href="/Ielts-listening2/admin/deletecourse?courseId=${i.courseId}"><button
												class="btn btn-sm rounded-0 button-delete-course"
												type="button" data-toggle="tooltip" data-placement="top"
												title="Delete">
												<i class="fa fa-trash"></i>
											</button></a>

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
										<c:forEach var="enrrol_lesson" items="${lesson.enrrolLesson }">


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
							</div>
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
	<script>
	function showFile(fileInputs){
		document.querySelectorAll("h5").forEach(h5 => h5.remove());
		const files = fileInputs.files;
		for (let i = 0; i < files.length; i++){
			const path = (window.URL || window.webkitURL).createObjectURL(files[i]);
			console.log(files[i]);
			const html = "<h5>"+files[i].name+"</h5>";
			document.querySelector("form").insertAdjacentHTML("afterend", html);
		}
	}
	</script>

     <script
		src="https://cdn.ckeditor.com/ckeditor5/40.0.0/classic/ckeditor.js"></script>
	<script>
		function showModel() {
			// Show the shadow
			document.getElementById("shadow").style.display = "block";
			document.getElementById("model").style.display = "block";
		}

		function hideShadow() {
			// Hide the shadow
			document.getElementById("shadow").style.display = "none";
			document.getElementById("model").style.display = "none";
		}
	</script>
	<script src="../node_modules/dropzone/dist/min/dropzone.min.js"></script>
	<script src="../assets/js/vendors/dropzone.js"></script>
</body>
</html>