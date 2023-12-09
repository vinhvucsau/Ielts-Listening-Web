<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link href="../assets/libs/simplebar/dist/simplebar.min.css"
	rel="stylesheet" />

<style>
/* Style the container with overflow */
.vh-100 {
	overflow-y: auto;
}

/* Customize the scrollbar */
.vh-100::-webkit-scrollbar {
	width: 6px;
}

/* Track */
.vh-100::-webkit-scrollbar-track {
	background: #1e293b;
}

/* Handle */
.vh-100::-webkit-scrollbar-thumb {
	background: #888;
	border-radius: 5px;
}
</style>

</head>
<body>
	<nav class="navbar-vertical navbar">
		<div class="vh-100 simplebar-scrollable-y" data-simplebar="init">
			<!-- Brand logo -->
			<a class="navbar-brand" href="../index.html"> <img
				src="../assets/images/brand/logo/logo-inverse.svg" alt="Geeks" />
			</a>
			<!-- Navbar nav -->
			<ul class="navbar-nav flex-column" id="sideNavbar">
				<li class="nav-item"><a class="nav-link" href="#"
					data-bs-toggle="collapse" data-bs-target="#navDashboard"
					aria-expanded="false" aria-controls="navDashboard"> <i
						class="nav-icon fe fe-home me-2"></i> Trang chủ
				</a>
					<div id="navDashboard" class="collapse show"
						data-bs-parent="#sideNavbar">
						<ul class="nav flex-column">

							<li class="nav-item"><a class="nav-link" href="analytics">Thống
									kê</a></li>
						</ul>
					</div></li>
				<li class="nav-item"><a class="nav-link collapsed"
					href="khoahoc"> <i class="nav-icon fe fe-book me-2"></i> Khóa
						học
				</a></li>
				<!-- Nav item -->
				<li class="nav-item"><a class="nav-link " href="listUser">
						<i class="nav-icon fe fe-user me-2"></i> Người dùng
				</a></li>



				<li class="nav-item"><a class="nav-link collapsed" href="order">
						<i class="nav-icon fe fe-shopping-bag me-2"></i> Hóa đơn
				</a></li>
				<!-- Nav item -->
				<li class="nav-item"><a class="nav-link collapsed"
					href="listTopic"> <i class="nav-icon fe fe-layout me-2"></i>
						Luyện đề
				</a></li>
				<!-- Nav item -->
				<li class="nav-item">
					<div class="nav-divider"></div>
				</li>
				<!-- Nav item -->
				<li class="nav-item">
					<div class="navbar-heading">Apps</div>
				</li>

				<li class="nav-item"><a class="nav-link collapsed" href="#"
					data-bs-toggle="collapse" data-bs-target="#navCMS"
					aria-expanded="false" aria-controls="navCMS"> <i
						class="nav-icon fe fe-book-open me-2"></i> Blog
				</a>
					<div id="navCMS" class="collapse" data-bs-parent="#sideNavbar">
						<ul class="nav flex-column">
							<li class="nav-item"><a class="nav-link active"
								href="admin-cms-overview.html">Overview</a></li>
							<li class="nav-item"><a class="nav-link" href="blogs">All
									Post</a></li>

						</ul>
					</div></li>
				<!-- Nav item -->

				<li class="nav-item">
					<div class="nav-divider"></div>
				</li>
				<!-- Nav item -->

			</ul>
			<!-- Card -->
			<div class="card bg-dark-primary shadow-none text-center mx-4 my-8">
				<div class="card-body py-6">
					<img src="../assets/images/background/giftbox.png" alt="" />
					<div class="mt-4">
						<h5 class="text-white">Unlimited Access</h5>
						<p class="text-white-50 fs-6">Upgrade your plan from a Free
							trial, to select ‘Business Plan’. Start Now</p>
						<a href="#" class="btn btn-white btn-sm mt-2">Upgrade Now</a>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<script src="../assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
	<script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>
	<script src="../assets/libs/quill/dist/quill.min.js"></script>
	<script src="../assets/js/vendors/editor.js"></script>
</body>
</html>
