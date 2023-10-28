<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
a {
	text-decoration: none;
}

.list-group-item-action {
	border-radius: 10px;
	transition: all 0.2s ease-in;
	color: black;
}

.list-group-item-action:focus {
	background-color: #eff6ff;
	color: #348efa;
	box-shadow: 0 4px 8px 0 #eff6ff, 0 6px 20px 0 rgba(19, 234, 254, 0.19);
}

.badge {
	background-color: #eff6ff;
	color: #348efa;
	border-radius: 40%;
	transition: all 0.2s ease-in;
	box-shadow: 0 4px 8px 0 rgba(19, 234, 254, 0.2), 0 6px 20px 0
		rgba(19, 234, 254, 0.19);
}

.list-group-item-action:focus .badge {
	background-color: #348efa;
	color: white;
	box-shadow: 0 4px 8px 0 #348efa, 0 6px 20px 0 rgba(19, 234, 254, 0.19);
}
</style>
</head>
<body>
	<div style="width: 300px; height: screen;"
		class="border d-flex flex-column px-3 py-5 gap-4">
		<div class="d-flex gap-3 align-items-center">
			<div style="height: 48px; width: 48px" class="bg-black rounded">
				IMG</div>
			<span>English Center</span>
		</div>

		<div class="list-group d-flex flex-column gap-1">
			<span class="text-muted"> Trang chủ </span> <a href="#"
				class="list-group-item-action px-3 py-2"> <i
				class="fas fa-house"></i> Trang chủ
			</a>
		</div>

		<div class="list-group d-flex flex-column gap-1">
			<span class="text-muted">Người dùng</span> <a href="#"
				class="list-group-item-action d-flex justify-content-between align-items-center px-3 py-2">
				<div class="d-flex align-items-center gap-3">
					<i class="far fa-user"></i> Người dùng
				</div> <span class="badge">10</span>
			</a>
		</div>

		<div class="list-group d-flex flex-column gap-1">
			<span class="text-muted"> Khóa học </span>
			<div>
				<a href="#"
					class="list-group-item-action d-flex justify-content-between align-items-center px-3 py-2">
					<div class="d-flex align-items-center gap-3">
						<i class="fa-solid fa-list-ul"></i>Khóa học đang bán
					</div> <span class="badge badge-primary rounded-pill">10</span>
				</a>
			</div>
			<a href="#"
				class="list-group-item-action d-flex justify-content-between align-items-center px-3 py-2">
				<div class="d-flex align-items-center gap-3">
					<i class="far fa-circle-check"></i> Khóa học chờ duyệt
				</div> <span class="badge badge-primary rounded-pill">10</span>
			</a>
		</div>

		<div class="list-group d-flex flex-column gap-1">
			<span class="text-muted"> Luyện đề </span> <a href="#"
				class="list-group-item-action d-flex justify-content-between align-items-center px-3 py-2">
				<div class="d-flex align-items-center gap-3">
					<i class="fa-solid fa-book-open"></i>Đề thi Listening
				</div>
			</a>
		</div>

		<div class="list-group d-flex flex-column gap-1">
			<span class="text-muted"> BLOGS</span> <a href="#"
				class="list-group-item-action d-flex justify-content-between align-items-center px-3 py-2">
				<div class="d-flex align-items-center gap-3">
					<i class="fab fa-blogger-b"></i> Blogs
				</div> <span class="badge badge-primary rounded-pill">10</span>
			</a>
		</div>

		<div class="list-group d-flex flex-column gap-1">
			<span class="text-muted"> Doanh thu </span> <a href="#"
				class="list-group-item-action d-flex justify-content-between align-items-center px-3 py-2">
				<div class="d-flex align-items-center gap-3">
					<i class="fa-solid fa-wallet"></i> Ví
				</div>
			</a>
		</div>

		<a style="margin-top: 50px" href="#"
			class="list-group-item-action d-flex justify-content-between align-items-center px-3 py-2">
			<div class="d-flex align-items-center gap-3">
				<i class="fas fa-arrow-right-from-bracket"></i> Đăng xuất
			</div>
		</a>
	</div>
</body>
</html>
