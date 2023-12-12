<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body>
	<main>
		<section class="pt-5 pb-5">
			<div class="container">
				<!-- User info -->
				<div class="row align-items-center">
					<div class="col-xl-12 col-lg-12 col-md-12 col-12">
						<!-- Bg -->
						<div class="rounded-top"
							style="background: url(../assets/images/background/profile-bg.jpg) no-repeat; background-size: cover; height: 100px"></div>
						<div
							class="card px-4 pt-2 pb-4 shadow-sm rounded-top-0 rounded-bottom-0 rounded-bottom-md-2">
							<div class="d-flex align-items-end justify-content-between">
								<div class="d-flex align-items-center">
									<div
										class="me-2 position-relative d-flex justify-content-end align-items-end mt-n5">
										<c:if test="${currentUser.image != null}">
											<img
												src='<c:url value='/image?fname=userAvatar/${ currentUser.image}'/>'
												class="avatar-xl rounded-circle border border-4 border-white"
												alt="avatar" />
										</c:if>
										<c:if test="${currentUser.image == null}">
											<img class="rounded-circle"
												style="width: 100px; height: 100px;"
												src='<c:url value = "https://res.cloudinary.com/dh6bfx865/image/upload/v1698335051/cuahangdientu/default_avatar.png"/>'
												alt="anh dai dien">
										</c:if>
									</div>
									<div class="lh-1">
										<h2 class="mb-0" name="userId" value="${user.userId}">
											<c:if test="${ currentUser.name != null}">
											${ currentUser.name}
										</c:if>
											<c:if test="${ currentUser.name == null}">
											${user.userId }
										</c:if>
											<a href="#" class="" data-bs-toggle="tooltip"
												data-placement="top" title="Beginner"> <svg width="16"
													height="16" viewBox="0 0 16 16" fill="none"
													xmlns="http://www.w3.org/2000/svg">
                                                        <rect x="3"
														y="8" width="2" height="6" rx="1" fill="#754FFE"></rect>
                                                        <rect x="7"
														y="5" width="2" height="9" rx="1" fill="#DBD8E9"></rect>
                                                        <rect x="11"
														y="2" width="2" height="12" rx="1" fill="#DBD8E9"></rect>
                                                    </svg>
											</a>
										</h2>
										<p class="mb-0 d-block">${user.email }</p>
									</div>
								</div>

							</div>
						</div>
					</div>
				</div>

				<div class="row mt-0 mt-md-4">

					<div class="col-lg-3 col-md-4 col-12">
						<!-- Side navbar -->
						<nav
							class="navbar navbar-expand-md shadow-sm mb-4 mb-lg-0 sidenav">
							<!-- Menu -->
							<a class="d-xl-none d-lg-none d-md-none text-inherit fw-bold"
								href="#">Menu</a>
							<!-- Button -->
							<button
								class="navbar-toggler d-md-none icon-shape icon-sm rounded bg-primary text-light"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#sidenav" aria-controls="sidenav"
								aria-expanded="false" aria-label="Toggle navigation">
								<span class="fe fe-menu"></span>
							</button>
							<!-- Collapse navbar -->
							<div class="collapse navbar-collapse" id="sidenav">
								<div class="navbar-nav flex-column">
									<span class="navbar-header">Subscription</span>
									<!-- List -->
									<ul class="list-unstyled ms-n2 mb-4">
										<!-- Nav item -->
										<li class="nav-item"><a class="nav-link"
											href="khoahoccuatoi?userId=${user.userId}"> <i
												class="fe fe-calendar nav-icon"></i> My Course
										</a></li>
										<!-- Nav item -->
										<li class="nav-item"><a class="nav-link"
											href="thongkediem?userId=${user.userId}"> <i
												class="fe fe-calendar nav-icon"></i> My Score
										</a></li>

										<!-- Nav item -->

										<li class="nav-item"><a class="nav-link"
											href="myorder?userId=${user.userId}"> <i
												class="fe fe-calendar nav-icon"></i> Invoice
										</a></li>

									</ul>
									<span class="navbar-header">Account Settings</span>
									<!-- List -->
									<ul class="list-unstyled ms-n2 mb-0">
										<!-- Nav item -->
										<li class="nav-item active"><a class="nav-link"
											href="capnhattaikhoan?userId=${user.userId}"> <i
												class="fe fe-settings nav-icon"></i> Edit Profile
										</a></li>
										<!-- Nav item -->
										<li class="nav-item"><a class="nav-link"
											href="capnhatmatkhau?userId=${user.userId}"> <i
												class="fe fe-user nav-icon"></i> Security
										</a></li>

										<li class="nav-item"><a class="nav-link"
											href="notifications.html"> <i class="fe fe-bell nav-icon"></i>
												Notifications
										</a></li>

										<!-- Nav item -->
										<li class="nav-item"><a class="nav-link"
											href="../index.html"> <i class="fe fe-power nav-icon"></i>
												Sign Out
										</a></li>
									</ul>
								</div>
							</div>
						</nav>
					</div>

					<div class="col-lg-9 col-md-8 col-12">
						<section class="container-fluid p-4">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-12">
									<!-- Page header -->
									<div class="border-bottom pb-3 mb-3">
										<div class="mb-2 mb-lg-0">
											<h1 class="mb-0 h2 fw-bold">Chi tiết hóa đơn</h1>
										</div>
									</div>
								</div>
							</div>
							<!-- row -->
							<div class="row justify-content-center">
								<div class="col-lg-12 col-12">
									<!-- card -->
									<div class="card">
										<!-- card body -->
										<div class="card-body">
											<div class="mb-6">
												<!-- heading -->
												<h2 class="mb-0">Cảm ơn bạn đã đặt hàng</h2>
												<p class="mb-0">Chúng tôi đánh giá cao đơn đặt hàng của bạn. Hiện đơn hàng của bạn đang được xử lý và sẽ sớm gửi cho bạn xác nhận!</p>
											</div>
											<div>
												<div class="border-bottom mb-3 pb-3">
													<!-- text -->
													<div class="d-flex align-items-center">
														<h4 class="mb-0">Mã đơn đặt hàng:</h4>
														<a href="#" class="ms-2 fw-semibold" style="color: white;">${list.paymentId}</a>

													</div>
													<div class="mb-0 d-flex align-items-center ">
														<a href="#" class=" fw-semibold" style="color: white;">Thời gian: ${idpayment.dateBuy} </a>
													</div>
												</div>
												<c:set var="totalCount" value="0" />
												<!-- Tăng giá trị của biến bên ngoài mỗi lần lặp -->

												<c:forEach var="course" items="${list_oddetail}">
													<c:set var="totalCount"
														value="${totalCount + course.payment.cost}" />
													<div class="row justify-content-between mb-5 mt-2">
														<!-- col -->
														<div class="col-lg-8 col-12">
															<div class="d-md-flex">
																<!-- img -->
																<div>
																	<img
																		src="<c:url value='/image?fname=${folder}/${course.userCourse.courses.image}'/>"
																		alt="" class="img-4by3-xl rounded" />
																</div>
																<!-- text -->
																<div class="ms-md-4 mt-2">
																	<h5 class="mb-1">${course.userCourse.courses.courseName}</h5>

																</div>
															</div>
														</div>
														<!-- price -->
														<div class="col-lg-4 col-12">
															<div class="d-flex justify-content-end mt-2">
																<fmt:formatNumber value="${course.payment.cost}"
																	pattern="###,### VNĐ" />
															</div>
														</div>
													</div>
												</c:forEach>
												<hr class="my-3" />
												<ul class="list-unstyled mb-0">

													<li class="d-flex justify-content-between mb-2 mt-3"><span>Giảm
															giá</span> <span class="text-dark fw-medium">0 VNĐ</span></li>
													<li class="d-flex justify-content-between mb-2"><span>Thành
															tiền</span> <span class="text-success fw-medium"> <fmt:formatNumber
																value="${totalCount}" pattern="###,### VNĐ" />
													</span></li>

													<li class="d-flex justify-content-between mb-2"><span>Phương
															thức thanh toán </span> <span class="text-secondary fw-medium">
															Chuyển khoản ngân hàng </span></li>
												</ul>

											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</div>
				</div>
			</div>
		</section>
	</main>
</body>