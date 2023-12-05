<%@page import="hcmute.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
Long count = (Long) request.getAttribute("countcourse.course");
%>
<%
User user = (User) session.getAttribute("user");
%>

<%
int countAddToCart = (int) request.getAttribute("countAddToCartByUser");
%>

<%
int networth = (int) request.getAttribute("networth");
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

.adminkhoahoc-course.course--detail:hover {
	cursor: pointer;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.adminkhoahoc-course.course--detail {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.05);
}

.card-text {
	display: -webkit-box;
	overflow: hidden;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.adminkhoahoc-course.course--detail {
	margin-bottom: 60px;
	margin-right: 40px;
}

.button-delete-course.course:hover {
	color: red;
}
</style>


	<%-- <section class="py-6">
		<div class="">
			<div class="row">
				<div class="col-lg-12 col-md-12 col-sm-12 col-12 mb-4">
					<div
						class="row d-md-flex justify-content-between align-items-center">
						<div class="col-md-6 col-lg-8 col-xl-7"></div>
					</div>
				</div>
				<h3>My Cart</h3>
				<!-- Tab content -->
				<div class="col-xl-12 col-lg-9 col-md-8 col-12">
					<div class="tab-content">
						<!-- Tab pane -->
						<div class="tab-pane fade show active pb-4" id="tabPaneGrid"
							role="tabpanel" aria-labelledby="tabPaneGrid">
							<c:forEach var="i" items="${course}">
								<div class="card mb-4 card-hover">
									<div class="row g-0">
										<a
											class="col-12 col-md-12 col-xl-3 col-lg-3 bg-cover img-left-rounded"
											style="background-image: url(../assets/images/course.course/course.course-javascript.jpg)">
											<img
											src="../assets/images/course.course/course.course-node.jpg"
											alt="..." class="img-fluid d-lg-none invisible">
										</a>
										<div class="col-lg-9 col-md-12 col-12">
											<!-- Card body -->
											<div class="card-body">
												<h3 class="mb-2 text-truncate-line-2">
													<a href="#" class="text-inherit">${i.course.courseName}</a>
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
																<c:forEach var="lesson" items="${i.course.lessons}">
																	<c:forEach var="enrrol_lesson"
																		items="${lesson.enrrolLesson }">

																		<c:set var="totalStars" value="0" />
																		<c:set var="count" value="0" />
																		<c:forEach var="lesson" items="${i.course.lessons}">
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
													<p class="card-text color-blue--primary fw-bold fs-5">${i.course.cost}
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
																<form action="deleteToCart" method="post">
																	<input type="hidden" name="cartId" value="${i.cartId }">
																	<button type="submit"
																		style="border: none; background: none;">
																		<i class="fe fe-trash-2 fs-4"></i>
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
						<!-- Tab pane -->

					</div>
				</div>
			</div>
		</div>
	</section> --%>



	<section class="container-fluid p-4">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-12">
				<!-- Page header -->
				<div class="border-bottom pb-3 mb-3">
					<div class="mb-2 mb-lg-0">
						<h1 class="mb-0 h2 fw-bold">Shopping Cart</h1>
						<!-- Breadcrumb -->
						<!-- <nav aria-label="breadcrumb">
                                        <ol class="breadcrumb">
                                            <li class="breadcrumb-item">
                                                <a href="admin-dashboard.html">Dashboard</a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <a href="#">Ecommerce</a>
                                            </li>
                                            <li class="breadcrumb-item active" aria-current="page">Shopping Cart</li>
                                        </ol>
                                    </nav> -->
					</div>
				</div>
			</div>
		</div>
		<!-- row -->
		<div class="row">
			<div class="col-12 mb-2">
				<!-- alert -->
				<div class="alert alert-warning alert-dismissible fade show"
					role="alert">
					Use coupon code <strong>(GKDIS15%)</strong> and get 10% discount !
				</div>
			</div>
			<div class="col-lg-8">
				<!-- card -->
				<div class="card">
					<!-- card header -->
					<div class="card-header">
						<div class="d-flex">
							<!-- heading -->
							<h4 class="mb-0">
								Shopping Cart <span>(<%=countAddToCart%> Items)
								</span>
							</h4>
						</div>
					</div>
					<div class="card-body">
						<div class="table-responsive table-card">
							<!-- Table -->
							<table class="table mb-0 text-nowrap">
								<!-- Table Head -->
								<thead class="table-light">
									<tr>
										<th>Product</th>
										<th>Price</th>
										<th>Qty</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<!-- Table body -->
									<c:set var="totalCost" value="0" />
									<c:forEach var="i" items="${course }">

										<tr>
											<td>
												<div class="d-flex">
													<div>
														<img
															src="../assets/images/course.course/course.course-node.jpg"
															alt="..." class="img-fluid d-lg-none invisible">
													</div>
													<div class="ms-4 mt-2 mt-lg-0">
														<h4 class="mb-1 text-primary-hover">${i.course.courseName }</h4>
														<!-- <div>
														<span> Color: <span class="text-dark fw-medium">Dark
																Green</span>
														</span> , <span> Size: <span class="text-dark fw-medium">10</span>
														</span>
													</div> -->


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
																		<c:forEach var="lesson" items="${i.course.lessons}">
																			<c:forEach var="enrrol_lesson"
																				items="${lesson.enrrolLesson }">

																				<c:set var="totalStars" value="0" />
																				<c:set var="count" value="0" />
																				<c:forEach var="lesson" items="${i.course.lessons}">
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



														<div class="mt-4">
															<a href="#" class="text-body">Edit</a> <a href="#"
																class="text-body ms-3">Move to Wishlist</a>
														</div>
													</div>
												</div>
											</td>

											<td>

												<h4 class="mb-0">
													<fmt:formatNumber value="${i.course.cost}"
														pattern="###,### VNĐ" />
												</h4>
											</td>
											<!-- <td>
												<div class="input-group flex-nowrap justify-content-center">
													<input type="button" value="-"
														class="button-minus form-control text-center flex-xl-none w-xl-30 w-xxl-10 px-0 py-1"
														data-field="quantity"> <input type="number"
														step="1" max="3" value="1" name="quantity"
														class="quantity-field form-control text-center flex-xl-none w-xl-30 w-xxl-10 px-0 py-1">
													<input type="button" value="+"
														class="button-plus form-control text-center flex-xl-none w-xl-30 w-xxl-10 px-0 py-1"
														data-field="quantity">
												</div>
											</td> -->

											<td>
												<h4 class="mb-0">1</h4>
											</td>


											<td>

												<div class="col-auto">
													<c:choose>
														<c:when test="${user ne null}">
															<!-- User is logged in, submit the form -->
															<form action="deleteToCart" method="post">
																<input type="hidden" name="cartId" value="${i.cartId }">
																<button type="submit"
																	style="border: none; background: none;">
																	<i class="fe fe-trash-2 fs-4"></i>
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

											</td>



										</tr>
										<c:set var="totalCost" value="${totalCost + i.course.cost}" />
									</c:forEach>
									<tr>
										<td class="align-middle border-top-0 border-bottom-0"></td>
										<td class="align-middle border-top-0 border-bottom-0">
											<h4 class="mb-0">Total</h4>
										</td>
										<td
											class="align-middle border-top-0 border-bottom-0 text-center">
											<span class="fs-4"><%=countAddToCart%> (items)</span>
										</td>
										<td>
											<h4 class="mb-0">
												<fmt:formatNumber value="${totalCost}" pattern="###,### VNĐ" />
											</h4>
										</td>
									</tr>

								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="mt-4 d-flex justify-content-between">
					<a href="product-grid.html" class="btn btn-outline-primary">Continue
						Shopping</a> <a href="checkout.html" class="btn btn-primary">Checkout</a>
				</div>
			</div>
			<div class="col-lg-4">
				<!-- card -->
				<div class="card mb-4 mt-4 mt-lg-0">

					<%-- <div class="card-body">
						<h4 class="mb-3">NetWorth</h4>
						<!-- row -->
						<div class="row g-3">
							<!-- col -->
							<div class="col">
								<input type="text" class="form-control" placeholder="GKDIS15%" value="<%=user%>" >
							</div>
						</div>
					</div> --%>

					<div class="card-body">

						<li
							class="list-group-item px-0 d-flex justify-content-between fs-5 text-dark fw-medium">
							<h4>NetWorth Total: </span> <span><fmt:formatNumber
									value="<%=networth%>" pattern="###,### VNĐ" /></h4>
						</li>
					</div>

					<!-- card body -->
					<div class="card-body">
						<h4 class="mb-3">Have a promo code ?</h4>
						<!-- row -->
						<div class="row g-3">
							<!-- col -->
							<div class="col">
								<input type="text" class="form-control" placeholder="GKDIS15%">
							</div>
							<!-- col -->
							<div class="col-auto">
								<a href="#" class="btn btn-dark">Apply</a>
							</div>
						</div>
					</div>
				</div>
				<!-- card -->
				<div class="card mb-4">
					<!-- card body -->
					<div class="card-body">
						<!-- text -->
						<h4 class="mb-3">Order Summary</h4>
						<!-- list group -->
						<ul class="list-group list-group-flush">
							<!-- list group item -->
							<li
								class="list-group-item px-0 d-flex justify-content-between fs-5 text-dark fw-medium">
								<span>Sub Total :</span> <span><fmt:formatNumber
										value="${totalCost}" pattern="###,### VNĐ" /></span>
							</li>
							<!-- list group item -->
							<li
								class="list-group-item px-0 d-flex justify-content-between fs-5 text-dark fw-medium">
								<span> Discount <span>(GKDIS15%)</span> <c:set
										var="discount" value="0" />
							</span> <span><fmt:formatNumber value="${discount}"
										pattern="###,### VNĐ" /></span>
							</li>
							<!-- list group item -->
							<li
								class="list-group-item px-0 d-flex justify-content-between fs-5 text-dark fw-medium">
								<span>Shipping Charge :</span> <span>0 VNĐ</span>
							</li>
							<!-- list group item -->
							<li
								class="list-group-item px-0 d-flex justify-content-between fs-5 text-dark fw-medium pb-0">
								<span>Tax Vat 19% (included) :</span> <span>0 VNĐ</span>
							</li>
						</ul>
					</div>
					<!-- card footer -->
					<c:set var="total" value="${totalCost - discount}" />
					<div class="card-footer">
						<div
							class="px-0 d-flex justify-content-between fs-5 text-dark fw-semibold">
							<span>Total (USD)</span> <span><fmt:formatNumber
									value="${total}" pattern="###,### VNĐ" /></span>
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