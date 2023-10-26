<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Add Bootstrap CSS Link -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6 col-xl-6 col-xxl-6">
				<img class="img-fluid" src="https://prep.vn/imgs/desk.png"
					style="height: 100%;">
			</div>
			<div class="col-md-6 col-xl-6 col-xxl-6">
				<div class="text-center">
					<p class="fw-bold fs-5">Đăng Ký</p>
				</div>
				<form class="p-4" action="signup" method="post">
					<div class="mb-4">
						<label for="username" class="form-label mb-2 text-secondary">
							Username <span class="text-danger">*</span>
						</label>
						<div class="input-group">
							<input id="username" name="userName" class="form-control"
								type="text" placeholder="Nhập username">
						</div>
					</div>
					<div class="mb-4">
						<label for="pwd" class="form-label mb-2 text-secondary">
							Mật khẩu <span class="text-danger">*</span>
						</label>
						<div class="input-group">
							<input id="pwd" name="passWord" class="form-control"
								type="password" placeholder="Nhập mật khẩu">
							<button class="btn btn-outline-secondary" type="button">
								<i class="far fa-eye"></i>
							</button>
						</div>
					</div>
					<div class="mb-4">
						<label for="pwd-confirm" class="form-label mb-2 text-secondary">
							Xác nhận mật khẩu <span class="text-danger">*</span>
						</label>
						<div class="input-group">
							<input id="pwd-confirm" class="form-control" type="password"
								placeholder="Xác nhận mật khẩu">
							<button class="btn btn-outline-secondary" type="button">
								<i class="far fa-eye"></i>
							</button>
						</div>
					</div>
					<div class="my-4">
						<form method="post">
							<button class="btn btn-primary fw-bold w-100 " type="submit">
								Đăng ký</button>
						</form>
					</div>
					<span class="text-primary"> Đã có tài khoản? <a
						class="text-decoration-underline" href="login"><strong>Đăng
								nhập</strong></a></span>
				</form>
			</div>
		</div>
	</div>

	<!-- Add Bootstrap JS and Popper.js -->
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>
	<script>
		document
				.addEventListener(
						"DOMContentLoaded",
						function() {
							// Lấy các trường input
							const userName = document
									.getElementById("username");
							const passwordInput = document
									.getElementById("pwd");
							const confirmPasswordInput = document
									.getElementById("pwd-confirm");

							// Lấy form và thêm sự kiện submit
							const form = document.querySelector("form");
							form
									.addEventListener(
											"submit",
											function(event) {
												if (userName.value.trim() === "") {
													event.preventDefault(); // Ngăn chặn form submit
													showToast("Chưa nhập Username kìa");
												} else if (passwordInput.value !== confirmPasswordInput.value) {
													event.preventDefault(); // Ngăn chặn form submit
													showToast("Mật khẩu và xác nhận mật khẩu không khớp!");
												}
											});
						});

		function showToast(message) {
			// Tạo một toast message
			const toast = document.createElement("div");
			toast.classList.add("toast", "show", "bg-danger", "position-fixed",
					"top-0", "end-0");
			toast.setAttribute("role", "alert");
			toast.setAttribute("aria-live", "assertive");
			toast.setAttribute("aria-atomic", "true");

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
		}
	</script>

</body>
</html>
