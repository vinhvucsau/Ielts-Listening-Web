<%@page import="hcmute.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Long count = (Long) request.getAttribute("countCourse");
%>
<%
User user = (User) session.getAttribute("user");
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
										<li><a class="dropdown-item" href="?rate=caodenthap">Cao
												đến thấp</a></li>
										<li><a class="dropdown-item" href="?rate=thapdencao">Thấp
												đến cao</a></li>
										<li><a class="dropdown-item" href="?">Mặc định</a></li>
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
											<a href="course-detail?id=${i.courseId }"><img
												src="../assets/images/course/course-node.jpg" alt=""
												class="card-img-top"></a>
											<!-- Card Body -->
											<div class="card-body">
												<h4 class="mb-2 text-truncate-line-2">
													<a href="course-detail?id=${i.courseId }"
														class="text-inherit">${i.courseName}</a>
												</h4>
												<!-- List inline -->
												<div class="d-flex align-items-center gap-3">
													<p class="card-text color-blue--primary fw-bold fs-5">${i.cost}
													<p class="card-text fw-bold fs-5"
														style="color: rgb(113, 113, 113)">VND</p>
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
																	<button type="submit"
																		style="border: none; background: none;">
																		<i class="fe fe-shopping-cart fs-4"></i>
																	</button>
																</form>
															</c:when>
															<c:otherwise>
																<!-- User is not logged in, show a login popup or perform any other action -->
																<button style="border: none; background: none;"
																	type="button" onclick="showLoginPopup()">
																	<i class="fe fe-shopping-cart fs-4"></i>
																</button>
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
																x="11" y="2" width="2" height="12" rx="1" fill="#DBD8E9"></rect>
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
																	<button type="submit"
																		style="border: none; background: none;">
																		<i class="fe fe-shopping-cart fs-4"></i>
																	</button>
																</form>
															</c:when>
															<c:otherwise>
																<!-- User is not logged in, show a login popup or perform any other action -->
																<button style="border: none; background: none;"
																	type="button" onclick="showLoginPopup()">
																	<i class="fe fe-shopping-cart fs-4"></i>
																</button>
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
	    function showLoginPopup() {
	        // Add your logic to show a login popup or redirect to the login page
	        showToast("Please log in to add to cart!");
	    }
	    
	    function showToast(message) {
	        // Tạo một toast message
	        const toast = document.createElement("div");
	        toast.classList.add("show", "toast", "position-fixed", "top-0", "end-0", "end-0");
	        toast.setAttribute("role", "alert");
	        toast.setAttribute("aria-live", "assertive");
	        toast.setAttribute("aria-atomic", "true");
	        toast.setAttribute("style", "border-left:4px solid red; z-index:3");

	        // Tạo nội dung toast
	        const toastBody = document.createElement("div");
	        toastBody.classList.add("toast-body");
	        toastBody.innerText = message;

	        // Thêm nội dung vào toast và toast vào trang
	        toast.appendChild(toastBody);
	        document.body.appendChild(toast);

	        // Hiển thị toast
	        const bootstrapToast = new bootstrap.Toast(toast);
	        bootstrapToast.show();

	        // Ẩn toast sau 5 giây
	        setTimeout(function () {
	            bootstrapToast.hide();
	        }, 5000);

	        // Thêm event listener để ẩn toast khi người dùng click vào nó
	        toast.addEventListener("click", function () {
	            bootstrapToast.hide();
	        });
	    }
	    
	    function formatMoneyVND(amount) {
	    	  // Check if the input is a valid number
	    	  if (isNaN(amount)) {
	    	    return 'Invalid input';
	    	  }

	    	  // Convert the number to a string and split it into integer and decimal parts
	    	  const [integerPart, decimalPart] = amount.toFixed(0).toString().split('.');

	    	  // Add commas to the integer part for thousand separators
	    	  const formattedIntegerPart = integerPart.replace(/\B(?=(\d{3})+(?!\d))/g, ',');

	    	  // Combine the formatted integer part with the decimal part and add the VND symbol
	    	  const formattedAmount = formattedIntegerPart + (decimalPart ? '.' + decimalPart : '') + ' VND';

	    	  return formattedAmount;
	    	}
	</script>
</body>
</html>