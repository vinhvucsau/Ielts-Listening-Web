<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />

<style>
.header-item::after {
	content: '';
	display: block;
	width: 0;
	height: 2px;
	background: #1479f4;
	transition: width .4s ease-in;
	content: '';
}

.header-item: {
	cursor: pointer;
}

.header-item:hover {
	color: #1479f4;
}

.header-item:hover::after {
	width: 100%;
}

.dropdown-container {
	display: none;
}

.dropdown:hover .dropdown-container {
	display: flex;
	top:40px;
}

.dropdown-item:hover {
	cursor: pointer;
	background-color: #eff6ff;
}

.dropdown:hover .header-item {
	color: #1479f4;
}

.dropdown:hover .header-item:after {
	width: 100%;
}

.header-item, .dropdown {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}
</style>
</head>
<body>
	<div
		class="w-full  flex item-center justify-between px-12 py-4 border-b border-b-[1px] font-semibold">
		<div class="flex item-center justify-center">
			<img alt="" src="https://prep.vn/imgs/logo-n.svg">
		</div>
		<ul class="flex item-center gap-5 h-[26px] ">
			<li class="header-item cursor-pointer ">
				<h3>Trang chủ</h3>
			</li>
			<li class="relative dropdown">
				<div class="header-item cursor-pointer ">
					<h3 class="flex item-center ">
						<span>Khóa học</span>
						<%@include file="/common/icon/showmoreIcon.jsp"%>
					</h3>
				</div>
				<div
					class="absolute top-[30px] dropdown-container whitespace-nowrap  p-3 shadow-lg bg-white">
					<ul class="w-full">
						<li class="px-3 py-1 dropdown-item ">Luyện thi IELTS</li>
						<li class="px-3 py-1 dropdown-item">Luyện thi Toeic</li>
						<li class="px-3 py-1 dropdown-item">Luyện thi THPT</li>
					</ul>
				</div>
			</li>
			<li class="header-item cursor-pointer">
				<h3>Kiểm tra đầu vào</h3>
			</li>
			<li class="relative dropdown">
				<div class="header-item cursor-pointer ">
					<h3 class="flex item-center ">
						<span>Luyện đề</span>
						<%@include file="/common/icon/showmoreIcon.jsp"%>
					</h3>
				</div>
				<div
					class="absolute dropdown-container whitespace-nowrap  top-[30px] p-3 shadow-lg bg-white">
					<ul class="w-full">
						<li class="px-3 py-1 dropdown-item ">Luyện đề IELTS</li>
						<li class="px-3 py-1 dropdown-item">Luyện đề Toeic</li>
						<li class="px-3 py-1 dropdown-item">Luyện đề THPT</li>
					</ul>
				</div>
			</li>

			<li class="relative dropdown">
				<div class="header-item cursor-pointer ">
					<h3 class="flex item-center ">
						<span>Blog</span>
						<%@include file="/common/icon/showmoreIcon.jsp"%>
					</h3>
				</div>
				<div
					class="absolute dropdown-container whitespace-nowrap  top-[30px] p-3 shadow-lg bg-white">
					<ul class="w-full">
						<li class="px-3 py-1 dropdown-item ">Học Tiếng Anh</li>
						<li class="px-3 py-1 dropdown-item ">Học Tiếng Trung</li>
						<li class="px-3 py-1 dropdown-item ">Học Tiếng Nhật</li>
						<li class="px-3 py-1 dropdown-item ">Học Tiếng Hàn</li>
						<li class="px-3 py-1 dropdown-item">Sự Kiện</li>
						<li class="px-3 py-1 dropdown-item">Vinh Danh Học Viên Điểm
							Cao</li>
					</ul>
				</div>
			</li>

			<li class="header-item cursor-pointer">
				<h3>Khóa học của tôi</h3>
			</li>
		</ul>
		<div class="relative dropdown">
			<img alt="" src="https://prep.vn/_nuxt/default-avatar.28543647.jpg"
				class="w-12 h-12 rounded-full">
			<div
				class="absolute dropdown-container whitespace-nowrap right-0 top-[30px] p-3 shadow-lg bg-white">
				<ul class="w-full">
					<li class="px-3 py-1 dropdown-item border-b-[1px]">
						<div class="flex item-center gap-2 mb-2 ">
							<img alt=""
								src="https://prep.vn/_nuxt/default-avatar.28543647.jpg"
								class="w-12 h-12 rounded-full">
							<div class="flex flex-col truncate">
								<span>Trần Dương Thiệu</span> <span>thieu098dm3@gmail.com</span>
							</div>
						</div>
					</li>
					<li>
						<ul class="border-t border-t-[1px] border-b border-b-[1px]">
							<li class="px-3 py-1 dropdown-item ">Khóa học của tôi</li>
							<li class="px-3 py-1 dropdown-item ">Trao đổi về bài chấm
								chữa</li>
							<li class="px-3 py-1 dropdown-item ">Hồ sơ học tập</li>
							<li class="px-3 py-1 dropdown-item">Cài đặt</li>
						</ul>
					</li>

					<li class="px-3 py-1 dropdown-item text-red-500">Đăng xuất</li>
				</ul>
			</div>
		</div>
	</div>
</body>
</html>