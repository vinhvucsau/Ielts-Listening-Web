<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="user_capnhat container-fluid p-0 m-0">
		<div class="d-flex flex-xxl-row justify-content-center border-bottom border-gray-300 mt-5 ">
			<a href="capnhattaikhoan" class="px-3 py-2 text--description text-dark">Tài khoản</a>
			<a class="px-3 py-2 text--description color-blue--primary border-bottom border-primary">Mật khẩu</a>
		</div>
		<div style="min-height:500px" class="my-5">
			<div class="row justify-content-center my-5">
				<div class="col-lg-6">
					<form class="row gx-3">
						<div class="col-12 mb-3">
							<label for="inputOldPass" class="form-label text--h4">Mật khẩu cũ</label>
							<input type="password" id="inputOldPass" class="form-control mt-2">
						</div>
						<div class="col-12 mb-3">
						<label for="inputNewPass" class="form-label text--h4">Mật khẩu mới</label>
						<input type="password" id="inputNewPass" class="form-control mt-2">
						</div>
						<div class="col-12 mb-3">
							<label for="inputNewPassConfirm" class="form-label text--h4">Mật khẩu mới</label>
							<input type="password" id="inputNewPassConfirm" class="form-control mt-2">
						</div>
						<div class="col-12 mt-3 mb-5">
							<div class="d-flex justify-content-center">
								<button type="submit" class="btn bg-color-blue--primary text--description color-white text--description px-3 py-2">Cập nhật</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>