<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://unpkg.com/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
	rel="stylesheet" />

<style>
.header-item {
	color: black !important;
}

.header-item:hover {
	color: #1479f4 !important;
}

.dropdown:hover>.dropdown-menu {
	display: block;
}

.header-item::after {
	content: "";
	display: block;
	width: 0;
	height: 2px;
	background: #1479f4;
	transition: width 0.4s ease-in;
	content: "";
}

.header-item:hover::after {
	width: 100%;
}

.dropdown:hover .header-item {
	color: #1479f4;
}

.dropdown:hover .header-item::after {
	width: 100%;
}

.dropdown-item:hover {
	background-color: rgb(239, 246, 255) !important;
}

.dropdown-item {
	border-radius: 5px;
	min-width: 150px;
}
</style>
</head>
<body>

	<nav style="height: 80px; font-size: 18px"
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
								src="<c:url value='${currentUser.image }' />" />
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
	</nav>
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
