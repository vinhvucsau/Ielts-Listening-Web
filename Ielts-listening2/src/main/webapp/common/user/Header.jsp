<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>

</head>
<body>
	<nav class="navbar navbar-expand-lg shadow-none">
		<div class="container px-0">
			<a class="navbar-brand" href="/Ielts-listening2/user/home"><img
				src="https://prep.vn/imgs/logo-n.svg" alt="Geeks" /></a>
			<div class="d-flex align-items-center order-lg-3">
				<div class="d-flex align-items-center">
					<div class="dropdown me-2">
						<button
							class="btn btn-light btn-icon rounded-circle d-flex align-items-center"
							type="button" aria-expanded="false" data-bs-toggle="dropdown"
							aria-label="Toggle theme (auto)">
							<i class="bi theme-icon-active"></i> <span
								class="visually-hidden bs-theme-text">Toggle theme</span>
						</button>
						<ul class="dropdown-menu dropdown-menu-end shadow"
							aria-labelledby="bs-theme-text">
							<li>
								<button type="button"
									class="dropdown-item d-flex align-items-center"
									data-bs-theme-value="light" aria-pressed="false">
									<i class="bi theme-icon bi-sun-fill"></i> <span class="ms-2">Light</span>
								</button>
							</li>
							<li>
								<button type="button"
									class="dropdown-item d-flex align-items-center"
									data-bs-theme-value="dark" aria-pressed="false">
									<i class="bi theme-icon bi-moon-stars-fill"></i> <span
										class="ms-2">Dark</span>
								</button>
							</li>
							<li>
								<button type="button"
									class="dropdown-item d-flex align-items-center active"
									data-bs-theme-value="auto" aria-pressed="true">
									<i class="bi theme-icon bi-circle-half"></i> <span class="ms-2">Auto</span>
								</button>
							</li>
						</ul>
					</div>
					<c:if test="${user == null}">
						<div class="d-none d-md-block me-2">
							<a href="<c:url value='/authentication-login' />"
								class="btn btn-primary">Đăng nhập</a>
						</div>
					</c:if>
					<c:if test="${user != null}">
						<li class="dropdown ms-2 d-inline-block position-static"><a
							class="rounded-circle" href="#" data-bs-toggle="dropdown"
							data-bs-display="static" aria-expanded="false">
								<div class="avatar avatar-md avatar-indicators avatar-online">
									<img alt="avatar" src="../assets/images/avatar/avatar-1.jpg"
										class="rounded-circle" />
								</div>
						</a>
							<div
								class="dropdown-menu dropdown-menu-end position-absolute mx-3 my-5">
								<div class="dropdown-item">
									<div class="d-flex">
										<div class="avatar avatar-md avatar-indicators avatar-online">
											<img alt="avatar" src="../assets/images/avatar/avatar-1.jpg"
												class="rounded-circle" />
										</div>
										<div class="ms-3 lh-1">
											<h5 class="mb-1">${user.userId }</h5>
											<p class="mb-0">${user.email }</p>
										</div>
									</div>
								</div>
								<div class="dropdown-divider"></div>
								<ul class="list-unstyled">
									<li class="dropdown-submenu dropstart-lg"><a
										class="dropdown-item dropdown-list-group-item dropdown-toggle"
										href="#"> <i class="fe fe-circle me-2"></i> Status
									</a>
										<ul class="dropdown-menu">
											<li><a class="dropdown-item" href="#"> <span
													class="badge-dot bg-success me-2"></span> Online
											</a></li>
											<li><a class="dropdown-item" href="#"> <span
													class="badge-dot bg-secondary me-2"></span> Offline
											</a></li>
											<li><a class="dropdown-item" href="#"> <span
													class="badge-dot bg-warning me-2"></span> Away
											</a></li>
											<li><a class="dropdown-item" href="#"> <span
													class="badge-dot bg-danger me-2"></span> Busy
											</a></li>
										</ul></li>
									<li><a class="dropdown-item" href="/Ielts-listening2/user/capnhattaikhoan?userId=${user.userId}">
											<i class="fe fe-user me-2">></i> Profile
									</a></li>
									<li><a class="dropdown-item"
										href="student-subscriptions.html"> <i
											class="fe fe-star me-2"></i> Subscription
									</a></li>
									<li><a class="dropdown-item" href="#"> <i
											class="fe fe-settings me-2"></i> Settings
									</a></li>
								</ul>
								<div class="dropdown-divider"></div>
								<ul class="list-unstyled">
									<li>
										<form action=logout method="post">
											<button class="dropdown-item">
												<i class="fe fe-power me-2"></i> Đăng Xuất
											</button>
										</form>
									</li>
								</ul>
							</div></li>

					</c:if>

				</div>
				<div>
					<button class="navbar-toggler collapsed" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbar-default"
						aria-controls="navbar-default" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="icon-bar top-bar mt-0"></span> <span
							class="icon-bar middle-bar"></span> <span
							class="icon-bar bottom-bar"></span>
					</button>
				</div>
			</div>
			<!-- Button -->

			<!-- Collapse -->
			<div class="collapse navbar-collapse" id="navbar-default">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarLanding"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Landings</a>
						<ul class="dropdown-menu" aria-labelledby="navbarLanding">
							<li>
								<h4 class="dropdown-header">Landings</h4>
							</li>

							<li><a href="landing-education.html"
								class="dropdown-item justify-content-between">Education</a></li>
							<li><a href="home-academy.html"
								class="dropdown-item justify-content-between">Home Academy</a></li>
							<li><a href="landing-courses.html" class="dropdown-item">Courses</a>
							</li>
							<li><a href="course-lead.html" class="dropdown-item">Lead
									Course</a></li>
							<li><a href="request-access.html" class="dropdown-item">Request
									Access</a></li>
							<li><a href="landing-sass.html" class="dropdown-item">SaaS</a>
							</li>

							<li><a href="landing-job.html"
								class="dropdown-item justify-content-between">Job Listing</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarPages"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Pages</a>
						<ul class="dropdown-menu dropdown-menu-arrow"
							aria-labelledby="navbarPages">
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Courses</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="./course-single.html">Course
											Single</a></li>
									<li><a class="dropdown-item"
										href="./course-single-v2.html">Course Single v2</a></li>
									<li><a class="dropdown-item" href="./course-resume.html">Course
											Resume</a></li>
									<li><a class="dropdown-item" href="./course-category.html">Course
											Category</a></li>
									<li><a class="dropdown-item" href="./course-checkout.html">Course
											Checkout</a></li>
									<li><a class="dropdown-item"
										href="./course-filter-list.html">Course List/Grid</a></li>
									<li><a class="dropdown-item" href="./add-course.html">Add
											New Course</a></li>
								</ul></li>
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Paths</a>
								<ul class="dropdown-menu">
									<li><a href="./course-path.html" class="dropdown-item">Browse
											Path</a></li>
									<li><a href="./course-path-single.html"
										class="dropdown-item">Path Single</a></li>
								</ul></li>
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Blog</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="./blog.html">Listing</a>
									</li>
									<li><a class="dropdown-item" href="./blog-single.html">Article</a>
									</li>
									<li><a class="dropdown-item" href="./blog-category.html">Category</a>
									</li>
									<li><a class="dropdown-item" href="./blog-sidebar.html">Sidebar</a>
									</li>
								</ul></li>

							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Career</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="./career.html">Overview</a>
									</li>
									<li><a class="dropdown-item" href="./career-list.html">Listing</a>
									</li>
									<li><a class="dropdown-item" href="./career-single.html">Opening</a>
									</li>
								</ul></li>
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Portfolio</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="./portfolio.html">List</a>
									</li>
									<li><a class="dropdown-item"
										href="./portfolio-single.html">Single</a></li>
								</ul></li>
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Job</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="landing-job.html">Home</a>
									</li>
									<li><a class="dropdown-item"
										href="./jobs/job-listing.html">List</a></li>
									<li><a class="dropdown-item" href="./jobs/job-grid.html">Grid</a>
									</li>
									<li><a class="dropdown-item" href="./jobs/job-single.html">Single</a></li>
									<li><a class="dropdown-item"
										href="./jobs/company-list.html">Company List</a></li>
									<li><a class="dropdown-item"
										href="./jobs/company-about.html">Company Single</a></li>
								</ul></li>
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Specialty</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="./coming-soon.html">Coming
											Soon</a></li>
									<li><a class="dropdown-item" href="./404-error.html">Error
											404</a></li>
									<li><a class="dropdown-item"
										href="./maintenance-mode.html">Maintenance Mode</a></li>
									<li><a class="dropdown-item"
										href="./terms-condition-page.html">Terms & Conditions</a></li>
								</ul></li>
							<li>
								<hr class="mx-3" />
							</li>

							<li><a class="dropdown-item" href="./about.html">About</a></li>
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Help Center</a>
								<ul class="dropdown-menu">
									<li><a class="dropdown-item" href="./help-center.html">Help
											Center</a></li>
									<li><a class="dropdown-item" href="./help-center-faq.html">FAQ's</a></li>
									<li><a class="dropdown-item"
										href="./help-center-guide.html">Guide</a></li>
									<li><a class="dropdown-item"
										href="./help-center-guide-single.html">Guide Single</a></li>
									<li><a class="dropdown-item"
										href="./help-center-support.html">Support</a></li>
								</ul></li>
							<li><a class="dropdown-item" href="./pricing.html">Pricing</a>
							</li>
							<li><a class="dropdown-item" href="./compare-plan.html">Compare
									Plan</a></li>

							<li><a class="dropdown-item" href="./contact.html">Contact</a>
							</li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarAccount"
						data-bs-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Accounts</a>
						<ul class="dropdown-menu dropdown-menu-arrow"
							aria-labelledby="navbarAccount">
							<li>
								<h4 class="dropdown-header">Accounts</h4>
							</li>
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Instructor</a>
								<ul class="dropdown-menu">
									<li class="text-wrap">
										<h5 class="dropdown-header text-dark">Instructor</h5>
										<p class="dropdown-text mb-0">Instructor dashboard for
											manage courses and earning.</p>
									</li>
									<li>
										<hr class="mx-3" />
									</li>
									<li><a class="dropdown-item"
										href="./dashboard-instructor.html">Dashboard</a></li>
									<li><a class="dropdown-item"
										href="./instructor-profile.html">Profile</a></li>
									<li><a class="dropdown-item"
										href="./instructor-courses.html">My Courses</a></li>
									<li><a class="dropdown-item"
										href="./instructor-order.html">Orders</a></li>
									<li><a class="dropdown-item"
										href="./instructor-reviews.html">Reviews</a></li>
									<li><a class="dropdown-item"
										href="./instructor-students.html">Students</a></li>
									<li><a class="dropdown-item"
										href="./instructor-payouts.html">Payouts</a></li>
									<li><a class="dropdown-item"
										href="./instructor-earning.html">Earning</a></li>
									<li class="dropdown-submenu dropend"><a
										class="dropdown-item dropdown-list-group-item dropdown-toggle"
										href="#"> Quiz <span class="badge bg-primary ms-1">New</span>
									</a>
										<ul class="dropdown-menu">
											<li><a class="dropdown-item"
												href="./instructor-quiz.html">Quiz</a></li>
											<li><a class="dropdown-item"
												href="./instructor-quiz-details.html">Single</a></li>
											<li><a class="dropdown-item"
												href="./instructor-quiz-result.html">Result</a></li>
										</ul></li>
								</ul></li>
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Students</a>
								<ul class="dropdown-menu">
									<li class="text-wrap">
										<h5 class="dropdown-header text-dark">Students</h5>
										<p class="dropdown-text mb-0">Students dashboard to manage
											your courses and subscriptions.</p>
									</li>
									<li>
										<hr class="mx-3" />
									</li>
									<li><a class="dropdown-item"
										href="./dashboard-student.html">Dashboard</a></li>
									<li><a class="dropdown-item"
										href="./student-subscriptions.html">Subscriptions</a></li>
									<li><a class="dropdown-item" href="./payment-method.html">Payments</a>
									</li>
									<li><a class="dropdown-item" href="./billing-info.html">Billing
											Info</a></li>
									<li><a class="dropdown-item" href="./invoice.html">Invoice</a>
									</li>
									<li><a class="dropdown-item" href="./invoice-details.html">Invoice
											Details</a></li>
									<li><a class="dropdown-item"
										href="./dashboard-student.html">Bookmarked</a></li>
									<li><a class="dropdown-item"
										href="./dashboard-student.html">My Path</a></li>
									<li class="dropdown-submenu dropend"><a
										class="dropdown-item dropdown-list-group-item dropdown-toggle"
										href="#"> Quiz <span class="badge bg-primary ms-1">New</span>
									</a>
										<ul class="dropdown-menu">
											<li><a class="dropdown-item" href="./student-quiz.html">Quiz</a>
											</li>
											<li><a class="dropdown-item"
												href="./student-quiz-attempt.html">Attempt</a></li>
											<li><a class="dropdown-item"
												href="./student-quiz-start.html">Start</a></li>
											<li><a class="dropdown-item"
												href="./student-quiz-result.html">Result</a></li>
										</ul></li>
								</ul></li>
							<li class="dropdown-submenu dropend"><a
								class="dropdown-item dropdown-list-group-item dropdown-toggle"
								href="#">Admin</a>
								<ul class="dropdown-menu">
									<li class="text-wrap">
										<h5 class="dropdown-header text-dark">Master Admin</h5>
										<p class="dropdown-text mb-0">Master admin dashboard to
											manage courses, user, site setting , and work with amazing
											apps.</p>
									</li>
									<li>
										<hr class="mx-3" />
									</li>
									<li class="px-3 d-grid"><a
										href="./dashboard/admin-dashboard.html"
										class="btn btn-sm btn-primary">Go to Dashboard</a></li>
								</ul></li>
							<li>
								<hr class="mx-3" />
							</li>
							<li><a class="dropdown-item" href="./sign-in.html">Sign
									In</a></li>
							<li><a class="dropdown-item" href="./sign-up.html">Sign
									Up</a></li>
							<li><a class="dropdown-item" href="./forget-password.html">Forgot
									Password</a></li>
							<li><a class="dropdown-item" href="./profile-edit.html">Edit
									Profile</a></li>
							<li><a class="dropdown-item" href="./security.html">Security</a>
							</li>
							<li><a class="dropdown-item" href="./social-profile.html">Social
									Profiles</a></li>
							<li><a class="dropdown-item" href="./notifications.html">Notifications</a>
							</li>
							<li><a class="dropdown-item" href="./profile-privacy.html">Privacy
									Settings</a></li>
							<li><a class="dropdown-item" href="./delete-profile.html">Delete
									Profile</a></li>
							<li><a class="dropdown-item" href="./linked-accounts.html">Linked
									Accounts</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a class="nav-link" href="#"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="fe fe-more-horizontal"></i>
					</a>
						<div class="dropdown-menu dropdown-menu-md"
							aria-labelledby="navbarDropdown">
							<div class="list-group">
								<a class="list-group-item list-group-item-action border-0"
									href="./docs/index.html">
									<div class="d-flex align-items-center">
										<i class="fe fe-file-text fs-3 text-primary"></i>
										<div class="ms-3">
											<h5 class="mb-0">Documentations</h5>
											<p class="mb-0 fs-6">Browse the all documentation</p>
										</div>
									</div>
								</a> <a class="list-group-item list-group-item-action border-0"
									href="./docs/bootstrap-5-snippets.html">
									<div class="d-flex align-items-center">
										<i class="bi bi-files fs-3 text-primary"></i>
										<div class="ms-3">
											<h5 class="mb-0">Snippet</h5>
											<p class="mb-0 fs-6">Bunch of Snippet</p>
										</div>
									</div>
								</a> <a class="list-group-item list-group-item-action border-0"
									href="./docs/changelog.html">
									<div class="d-flex align-items-center">
										<i class="fe fe-layers fs-3 text-primary"></i>
										<div class="ms-3">
											<h5 class="mb-0">
												Changelog <span class="text-primary ms-1" id="changelog"></span>
											</h5>
											<p class="mb-0 fs-6">See what's new</p>
										</div>
									</div>
								</a> <a class="list-group-item list-group-item-action border-0"
									href="https://geeksui.codescandy.com/geeks-rtl/"
									target="_blank">
									<div class="d-flex align-items-center">
										<i class="fe fe-toggle-right fs-3 text-primary"></i>
										<div class="ms-3">
											<h5 class="mb-0">RTL demo</h5>
											<p class="mb-0 fs-6">RTL Pages</p>
										</div>
									</div>
								</a>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>

	<!--  	<nav style="height: 80px; font-size: 18px"
		class="navbar navbar-expand-lg navbar-light border-bottom">
		<div style="max-width: 1440px"
			class="container-fluid  d-flex justify-content-between">
			<a class="navbar-brand" href="#"> <img
				src="https://prep.vn/imgs/logo-n.svg" alt="Logo" />
			</a>
			<ul class="navbar-nav fw-bolder">
				<li class="nav-item"><a class="nav-link header-item" href="#">Trang
						chủ</a></li>
				<li class="nav-item dropdown">
					<button class="nav-link header-item" type="button"
						id="navbarDropdownCourse" role="button" data-bs-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">
						Khóa học <i class="fas fa-caret-down"></i>
					</button>
					<div class="dropdown-menu p-3 "
						aria-labelledby="navbarDropdownCourse">
						<a class="dropdown-item p-2" href="#">Luyện thi IELTS</a> <a
							class="dropdown-item p-2" href="#">Luyện thi Toeic</a> <a
							class="dropdown-item p-2" href="#">Luyện thi THPT</a>
					</div>
				</li>
				<li class="nav-item"><a class="nav-link header-item" href="#">Kiểm
						tra đầu vào</a></li>
				<li class="nav-item dropdown"><a class="nav-link header-item"
					href="#" id="navbarDropdownPractice" role="button"
					data-bs-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Luyện đề <i class="fas fa-caret-down"></i>
				</a>

					<div class="dropdown-menu p-3"
						aria-labelledby="navbarDropdownPractice">
						<a class="dropdown-item p-2" href="#">Luyện đề IELTS</a> <a
							class="dropdown-item p-2" href="#">Luyện đề Toeic</a> <a
							class="dropdown-item p-2" href="#">Luyện đề THPT</a>
					</div></li>
				<li class="nav-item dropdown"><a class="nav-link header-item"
					href="#" id="navbarDropdownBlog" role="button"
					data-bs-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> Blog <i class="fas fa-caret-down"></i>
				</a>
					<div class="dropdown-menu  p-3"
						aria-labelledby="navbarDropdownBlog">
						<a class="dropdown-item p-2" href="#">Học Tiếng Anh</a> <a
							class="dropdown-item p-2" href="#">Học Tiếng Trung</a> <a
							class="dropdown-item p-2" href="#">Học Tiếng Nhật</a> <a
							class="dropdown-item p-2" href="#">Học Tiếng Hàn</a> <a
							class="dropdown-item p-2" href="#">Sự Kiện</a> <a
							class="dropdown-item p-2" href="#">Vinh Danh Học Viên Điểm
							Cao</a>
					</div></li>
			</ul>
			<div>
				<c:if test="${currentUser == null}">
					<a href="<c:url value='/authentication-login' />"
						class="btn btn-primary"> Bắt đầu học <i
						class="fa-solid fa-arrow-right"></i>
					</a>
				</c:if>
				<c:if test="${currentUser.userId != null }">
					<div class="nav-item dropdown">
						<c:if test="${currentUser.image != null}">
							<img style="width: 48px; height: 48px;"
								class="rounded-circle nav-link header-item" role="button"
								data-bs-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false" alt=""
								src="<c:url value='/image?fname=userAvatar/${ currentUser.image}' />" />
						</c:if>
						<c:if test="${currentUser.image == null}">
							<img style="width: 48px; height: 48px;"
								class="rounded-circle nav-link header-item" role="button"
								data-bs-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false" alt=""
								src='<c:url value = "https://res.cloudinary.com/dh6bfx865/image/upload/v1698335051/cuahangdientu/default_avatar.png"></c:url>' />
						</c:if>
						<div style="position: absolute; top: 50px; right: 0"
							class="dropdown-menu p-3" aria-labelledby="navbarDropdownCourse">
							<a class="dropdown-item p-2" href="#">Option 1</a> <a
								class="dropdown-item p-2" href="#">Option 2</a>

							<hr class="dropdown-divider">
							<form action="logout" method="post">
								<button id="btn__logout" class="dropdown-item p-2" href="#">Đăng
									Xuất</button>
							</form>
						</div>
					</div>
				</c:if>


			</div>
		</div>
	</nav> -->
	<script>
		document.querySelectorAll('.dropdown-menu').forEach(function(dropdown) {
			dropdown.addEventListener('click', function(event) {
				event.stopPropagation(); // Prevent the default behavior
			});
		});

		function handleLogout() {
			document.cookie = "currentUserID=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/;";
			// Reload the page
			location.reload();
		}
	</script>
</body>
</html>
