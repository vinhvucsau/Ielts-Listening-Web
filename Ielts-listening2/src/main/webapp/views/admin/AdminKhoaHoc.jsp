<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<!-- Button Thêm khóa học -->
		<div
			class="adminkhoahoc-button d-flex flex-row justify-content-center">
			<button href="#" type="button" class="btn mb-5" onclick="showModel()"
				style="background-color: rgb(0, 177, 53)">
				<span style="color: white">Thêm Khóa Học</span>
			</button>
		</div>
	<!-- Model -->
		<div id="model" class="course_input"
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
										class="form-control courseName" type="text" placeholder="Tên khóa học"
										required> <small>Write a 60 character course
										title.</small>
								</div>
								<div class="mb-3">
								   <label class="form-label">Mô tả</label>
								   <textarea class="form-control description" name="description" aria-label="With textarea"></textarea>
								 </div>
								<div class="d-flex align-items-center justify-content-between">
									<div style="min-width: 350px" class="mb-3">
										<label for="fee" class="form-label">Học phí</label>
										<input id="" name="cost"
											class="form-control cost" type="text" placeholder="Học phí" required>
									</div>
											
									<div style="min-width: 350px" class="mb-3">
										<label class="form-label" for="startdate">Ngày bắt đầu</label> 
										<input class="form-control flatpickr enrrollmentDate" type="text"
										placeholder="Start date" id="" name="enrrollmentDate" 
										data-mdb-toggle="datepicker" required/>
									</div>
								</div>
								
								<div class="mb-3">
									<label class="form-label">Thêm ảnh bìa</label> 
									<input type="file" class="form-control image"
											name="image" id=""
											accept="image/jpeg, image/png" require>
								</div>

<div>

								<div class="mb-3">
									<label class="form-label">Thêm video xem trước</label> 
									<input type="file" class="form-control trailer" 
											name="trailer" id=""
											accept="video/mp4" require>
									<div id="audio"></div>
								</div>
							</div>

						</div>
						<!-- Button -->
						<button
						class="btn btn-primary m-4" type="submit" onclick="show()">Xác
							nhận</button>
					</div>
				</div>
				</div>
			</form>
		</div>
		<div id="model1" 
			style="max-width: 800px; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); z-index: 3; display: none;">
			<form action="updateCourse" method="post" enctype="multipart/form-data" >
				<div id="test-l-1" class="course_Update bs-stepper-pane"
					aria-labelledby="courseFormtrigger1">
					<!-- Card -->
					<div class="card mb-3">
						<div class="card-header border-bottom px-4 py-3">
							<h4 class="mb-0">Sửa khóa học</h4>
						</div>
						<!-- Card body -->
						<div style="max-height: 450px" class=" overflow-auto">
							<div class="card-body">
								<div class="mb-3">
								   <label for="courseId"class="form-label">ID</label>
								   <input id="courseId" name="CourseId"
											class="form-control cost" type="text" readonly >
								</div>
								<div class="mb-3">
									<label for="courseName" class="form-label">Tên khóa học</label>
										<input id="courseName" name="CourseName" value="${i.courseName }"
										class="form-control courseName" type="text" placeholder="Tên khóa học"
										required> <small>Write a 60 character course
										title.</small>
								</div>
								<div class="mb-3">
								   <label class="form-label">Mô tả</label>
								   <textarea id="description" class="form-control description" name="description" aria-label="With textarea"></textarea>
								 </div>
								<div class="d-flex align-items-center justify-content-between">
									<div style="min-width: 350px" class="mb-3">
										<label for="fee" class="form-label">Học phí</label>
										<input id="cost" name="Cost"
											class="form-control cost" type="text" placeholder="Học phí" required>
									</div>
											
									<div style="min-width: 350px" class="mb-3">
										<label class="form-label" for="startdate">Ngày bắt đầu</label> 
										<input class="form-control flatpickr enrrollmentDate" type="text"
										placeholder="Start date" id="" name="EnrrollmentDate" 
										data-mdb-toggle="datepicker" required/>
									</div>
								</div>
								
								<div class="mb-3">
									<label class="form-label">Ảnh bìa</label> 
									<input type="file" class="form-control image"
											name="Image" id=""
											accept="image/jpeg, image/png" require>
								</div>

<div>

								<div class="mb-3">
									<label class="form-label">Video xem trước</label> 
									<input type="file" class="form-control trailer" 
											name="Trailer" id=""
											accept="video/mp4" require>
									<div id="audio"></div>
								</div>
							</div>

						</div>
						<!-- Button -->
						<button
						class="btn btn-primary m-4" type="submit" onclick="show()">Cập nhật </button>
					</div>
				</div>
				</div>
			</form>
		</div>
	<div id="shadow"
		class="position-absolute top-0 start-0 bottom-0 end-0 bg-dark"
		style="opacity: 0.5; display: none; z-index: 2" onclick="hideShadow(),hideShadow1()"></div>
		<div>

			<div class="d-flex flex-row justify-content-between mb-4">

				

		<section class="py-6">
			<div class="">
				<div class="row">
					<div class="col-lg-12 col-md-12 col-sm-12 col-12 mb-4">
						<div
							class="row d-md-flex justify-content-between align-items-center">
							<div class="col-md-6 col-lg-8 col-xl-7">
								<h4 class="mb-3 mb-md-0"><%=count%>
									Khóa Học
								</h4>
							</div>
							<div class="d-inline-flex col-md-6 col-lg-4 col-xl-5">
								<div class="me-2">
									<!-- Nav -->
									<div class="nav btn-group flex-nowrap" role="tablist">
										<button class="btn btn-outline-secondary active"
											data-bs-toggle="tab" data-bs-target="#tabPaneGrid" role="tab"
											aria-controls="tabPaneGrid" aria-selected="true">
											<span class="fe fe-grid"></span>
										</button>
										<button class="btn btn-outline-secondary" data-bs-toggle="tab"
											data-bs-target="#tabPaneList" role="tab"
											aria-controls="tabPaneList" aria-selected="false">
											<span class="fe fe-list"></span>
										</button>
									</div>
								</div>
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
												href="?gia=caodenthap">Cao đến thấp</a></li>
											<li><a class="dropdown-item justify-content-between"
												href="?gia=thapdencao">Thấp đến cao</a></li>
											<li><a class="dropdown-item justify-content-between"
												href="?">Mặc định</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- Tab content -->
					<div class="col-xl-12 col-lg-9 col-md-8 col-12">
						<div class="tab-content">
							<!-- Tab pane -->
							<div class="tab-pane fade show active pb-4" id="tabPaneGrid"
								role="tabpanel" aria-labelledby="tabPaneGrid">
								<div class="row">
									<c:forEach var="i" items="${course}">
										<div class="col-lg-3 col-md-6 col-12">
											<div class="card mb-4 card-hover">
												<a href="listLesson?courseId=${i.courseId}"><img
													src="../assets/images/course/course-node.jpg" alt=""
													class="card-img-top"></a>
												<!-- Card Body -->
												<div class="card-body">
													<h4 class="mb-2 text-truncate-line-2">
														<a href="course-single.html" class="text-inherit">${i.courseName}</a>
													</h4>
													<!-- List inline -->
													<div class="d-flex align-items-center gap-3">
														<p class="card-text color-blue--primary fw-bold fs-5"><fmt:formatNumber value="${i.cost}"
														pattern="###,### VNĐ" />
														
														<p class="card-text fw-bold fs-5"
															style="color: rgb(113, 113, 113)"></p>
														</p>

														

													</div>
													<div class="lh-1">

														<span class="align-text-top"> <span class="fs-6">
																<div class="d-flex gap-5">
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
																					<c:set var="averageStars"
																						value="${totalStars / count}" />
																					<c:set var="roundedAverage">
																						<c:out
																							value="${(averageStars - (averageStars mod 1)) + (averageStars mod 1 > 0 ? 1 : 0)}" />
																					</c:set>
																				</c:when>
																			</c:choose>
																		</c:forEach>
																	</c:forEach>
																	<div class="stars rating-star"
																		data-rating="${roundedAverage}"></div>
																	<div class="rating-avg pe-3 text-warning">${roundedAverage}</div>
																</div>
														</span>
													</div>
												</div>
												<!-- Card footer -->
												<div class="card-footer">
													<div class="row align-items-center g-0">
														<div class="col-auto">
															<img src="../assets/images/avatar/avatar-9.jpg"
																class="rounded-circle avatar-xs" alt="">
														</div>
														<div class="col ms-2">
															<span>Morris Mccoy</span>
														</div>
														<div class="col-auto">
															<c:choose>
																<c:when test="${user ne null}">
																	<!-- User is logged in, submit the form -->
																	<form action="addToCart" method="post">
																		<input type="hidden" name="courseId"
																			value="${i.courseId }">
																		<!-- <button type="submit"
																		style="border: none; background: none;">
																		<i class="fe fe-shopping-cart fs-4"></i>
																	</button> -->

																		<a
																			href="/Ielts-listening2/admin/deletecourse?courseId=${i.courseId}"><button
																				class="btn btn-sm rounded-0 button-delete-course"
																				type="button" data-toggle="tooltip"
																				data-placement="top" title="Delete">
																				<i class="fa fa-trash"></i>
																			</button></a>
																			<a
																			href="#" value="${i.courseId }"><button
																				class="btn btn-sm rounded-0 button-add-course" value="${i.courseId }"	
																				type="button" data-toggle="tooltip" 
																				data-placement="top" title="Update">
																				<i class="fa fa-edit"></i>
																			</button></a>


																	</form>
																</c:when>
																<c:otherwise>
																	<!-- User is not logged in, show a login popup or perform any other action -->
																	<!-- <button style="border: none; background: none;"
																		type="button" onclick="showLoginPopup()">
																		<i class="fe fe-shopping-cart fs-4"></i>
																	</button> -->


																	<a
																		href="/Ielts-listening2/admin/deletecourse?courseId=${i.courseId}"><button
																			class="btn btn-sm rounded-0 button-delete-course"
																			type="button" data-toggle="tooltip"
																			data-placement="top" title="Delete"
																			onclick="showLoginPopup()">
																			<i class="fa fa-trash"></i>
																		</button></a>
																	<a
																			value="${i.courseId }"><button
																				class="btn btn-sm rounded-0 button-add-course" value="${i.courseId }"	
																				type="button" data-toggle="tooltip" 
																				data-placement="top" title="Update">
																				<i class="fa fa-edit"></i>
																			</button></a>
																</c:otherwise>
															</c:choose>

														</div>
													</div>
												</div>
											</div>
										</div>
									</c:forEach>



								</div>
							</div>
							<!-- Tab pane -->
							<div class="tab-pane fade pb-4" id="tabPaneList" role="tabpanel"
								aria-labelledby="tabPaneList">
								<!-- Card -->
								<c:forEach var="i" items="${course}">
									<div class="card mb-4 card-hover">
										<div class="row g-0">
											<a
												class="col-12 col-md-12 col-xl-3 col-lg-3 bg-cover img-left-rounded"
												style="background-image: url(../assets/images/course/course-javascript.jpg)">
												<img src="../assets/images/course/course-node.jpg" alt="..."
												class="img-fluid d-lg-none invisible">
											</a>
											<div class="col-lg-9 col-md-12 col-12">
												<!-- Card body -->
												<div class="card-body">
													<h3 class="mb-2 text-truncate-line-2">
														<a href="#" class="text-inherit">${i.courseName}</a>
													</h3>
													<!-- list inline -->
													<ul class="list-inline">
														<li class="list-inline-item"><span> <svg
																	xmlns="http://www.w3.org/2000/svg" width="12"
																	height="12" fill="currentColor"
																	class="bi bi-clock align-baseline" viewBox="0 0 16 16">
                                                        <path
																		d="M8 3.5a.5.5 0 0 0-1 0V9a.5.5 0 0 0 .252.434l3.5 2a.5.5 0 0 0 .496-.868L8 8.71V3.5z"></path>
                                                        <path
																		d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm7-8A7 7 0 1 1 1 8a7 7 0 0 1 14 0z"></path>
                                                    </svg>
														</span> <span>1h 30m</span></li>
														<li class="list-inline-item"><svg class="me-1 mt-n1"
																width="16" height="16" viewBox="0 0 16 16" fill="none"
																xmlns="http://www.w3.org/2000/svg">
                                                                <rect
																	x="3" y="8" width="2" height="6" rx="1" fill="#754FFE"></rect>
                                                                <rect
																	x="7" y="5" width="2" height="9" rx="1" fill="#DBD8E9"></rect>
                                                                <rect
																	x="11" y="2" width="2" height="12" rx="1"
																	fill="#DBD8E9"></rect>
                                                            </svg> Beginner</li>
														<li class=" list-inline-item align-text-top"><span
															class="fs-6">
																<div class="d-flex gap-5">
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
																					<c:set var="averageStars"
																						value="${totalStars / count}" />
																					<c:set var="roundedAverage">
																						<c:out
																							value="${(averageStars - (averageStars mod 1)) + (averageStars mod 1 > 0 ? 1 : 0)}" />
																					</c:set>
																				</c:when>
																			</c:choose>
																		</c:forEach>
																	</c:forEach>
																	<div class="stars rating-star"
																		data-rating="${roundedAverage}"></div>
																	<div class="rating-avg pe-3 text-warning">${roundedAverage}</div>
																</div></li>
													</ul>
													<div class="d-flex align-items-center gap-3">
														<p class="card-text color-blue--primary fw-bold fs-5">${i.cost}
														<p class="card-text fw-bold fs-5"
															style="color: rgb(113, 113, 113)">VND</p>
														</p>
													</div>
													<div class="row align-items-center g-0">
														<div class="col-auto">
															<img src="../assets/images/avatar/avatar-6.jpg"
																class="rounded-circle avatar-xs" alt="">
														</div>
														<div class="col ms-2">
															<span>Sumona Khaat</span>
														</div>
														<div class="col-auto">
															<c:choose>
																<c:when test="${user ne null}">
																	<!-- User is logged in, submit the form -->
																	<form action="addToCart" method="post">
																		<input type="hidden" name="courseId"
																			value="${i.courseId }">
																		

																		<a
																			href="/Ielts-listening2/admin/deletecourse?courseId=${i.courseId}"><button
																				class="btn btn-sm rounded-0 button-delete-course"
																				type="button" data-toggle="tooltip"
																				data-placement="top" title="Delete">
																				<i class="fa fa-trash"></i>
																			</button></a>
																		<a
																			href="#" value="${i.courseId }"><button
																				class="btn btn-sm rounded-0 button-add-course" value="${i.courseId }"	
																				type="button" data-toggle="tooltip" 
																				data-placement="top" title="Update">
																				<i class="fa fa-edit"></i>
																			</button></a>

																	</form>
																</c:when>
																<c:otherwise>
																
																	<a
																		href="/Ielts-listening2/admin/deletecourse?courseId=${i.courseId}"><button
																			class="btn btn-sm rounded-0 button-delete-course"
																			type="button" data-toggle="tooltip"
																			data-placement="top" title="Delete"
																			onclick="showLoginPopup()">
																			<i class="fa fa-trash"></i>
																		</button></a>
																	<a
																			href="#" value="${i.courseId }"><button
																				class="btn btn-sm rounded-0 button-add-course" value="${i.courseId }"	
																				type="button" data-toggle="tooltip" 
																				data-placement="top" title="Update">
																				<i class="fa fa-edit"></i>
																			</button></a>

																</c:otherwise>
															</c:choose>

														</div>
													</div>
													<div></div>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>


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
		var arrCourse = [];
		// Duyệt danh sách Java và thêm dữ liệu vào biến JavaScript
		<c:forEach var="item" items="${course}">
			var item = {
				courseId : "${item.courseId}",
				courseName : "${item.courseName}",
				image : "${item.image}",
				trailer : "${item.trailer}",
				enrrollmentDate: "${item.enrrolmentDate}",
				description: "${item.description}",
				cost: "${item.cost}"
			};
			arrCourse.push(item);
		</c:forEach>
		console.log(arrCourse);
		function showCourseInfo(courseId) {
		    // Find the course object in arrCourse array based on courseId
		    var selectedCourse = arrCourse.find(function(course) {
		      return course.courseId === courseId;
		    });
		    console.log(selectedCourse);
		    console.log(selectedCourse.courseName);
		    // Populate the modal with course information
		    document.getElementById('courseId').value = selectedCourse.courseId;
		    document.getElementById('courseName').value = selectedCourse.courseName;
		    document.getElementById('description').value = selectedCourse.description;
		    document.getElementById('image').value = selectedCourse.image;
		    document.getElementById('trailer').value = selectedCourse.trailer;
		    document.getElementById('enrrollmentDate').value = selectedCourse.enrrollmentDate;
		    document.getElementById('cost').value = selectedCourse.cost;
		    // Populate other fields as needed

		    // Display the modal
		    showModel1()
		  }

		  // Event listener for button clicks
		 /*  document.addEventListener('DOMContentLoaded', function() { */
		    var buttons = document.querySelectorAll('.button-add-course');
			console.log(buttons);
		    buttons.forEach(function(button) {
		      button.addEventListener('click', function() {
		        var courseId = this.value;
		        showCourseInfo(courseId);
		      });
		    });

	</script>
	
	<script src="../assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
	<script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>
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

     
	<script>
		function showModel() {
			// Show the shadow
			document.getElementById("shadow").style.display = "block";
			document.getElementById("model").style.display = "block";
		}
		function showModel1() {
			// Show the shadow
			document.getElementById("shadow").style.display = "block";
			document.getElementById("model1").style.display = "block";
		}

		function hideShadow() {
			// Hide the shadow
			document.getElementById("shadow").style.display = "none";
			document.getElementById("model").style.display = "none";
		}
		function hideShadow1() {
			// Hide the shadow
			document.getElementById("shadow").style.display = "none";
			document.getElementById("model1").style.display = "none";
		}
	</script>
	
</body>
</html>