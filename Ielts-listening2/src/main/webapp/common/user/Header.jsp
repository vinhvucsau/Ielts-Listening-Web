<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>


<!DOCTYPE html>
<html>
        <title>Insert title here</title>

        <style>
            .header-item{
                color :black !important;
            }
            .header-item:hover {
                color: #1479f4 !important;
            }

            .dropdown:hover > .dropdown-menu {
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
            .dropdown-item:hover{
                background-color: rgb(239 ,246 ,255)!important;
            }
            .dropdown-item{
                border-radius: 5px;
                min-width: 150px;
            }
        </style>
    </head>
    <body>
        <nav style="height: 80px;" class="navbar navbar-expand-lg navbar-light border-bottom">
            <div style="max-width: 1440px" class="container-fluid  d-flex justify-content-between">
                <a class="navbar-brand" href="#">
                    <img src="https://prep.vn/imgs/logo-n.svg" alt="Logo" />
                </a>
                <ul class="navbar-nav fw-bolder">
                    <li class="nav-item">
                        <a class="nav-link header-item" href="#">Trang chủ</a>
                    </li>
                    <li class="nav-item dropdown">
                        <button
                            class="nav-link header-item"
                            type="button"
                            id="navbarDropdownCourse"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                        >
                            Khóa học <i class="fas fa-caret-down"></i>
                        </button>
                        <div
                            class="dropdown-menu p-3 "
                            aria-labelledby="navbarDropdownCourse"
                        >
                            <a class="dropdown-item p-2" href="#"
                                >Luyện thi IELTS</a
                            >
                            <a class="dropdown-item p-2" href="#"
                                >Luyện thi Toeic</a
                            >
                            <a class="dropdown-item p-2" href="#">Luyện thi THPT</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link header-item" href="#"
                            >Kiểm tra đầu vào</a
                        >
                    </li>
                    <li class="nav-item dropdown">
                        <a
                            class="nav-link header-item"
                            href="#"
                            id="navbarDropdownPractice"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                        >
                            Luyện đề <i class="fas fa-caret-down"></i>
                        </a>

                        <div
                            class="dropdown-menu p-3"
                            aria-labelledby="navbarDropdownPractice"
                        >
                            <a class="dropdown-item p-2" href="#">Luyện đề IELTS</a>
                            <a class="dropdown-item p-2" href="#">Luyện đề Toeic</a>
                            <a class="dropdown-item p-2" href="#">Luyện đề THPT</a>
                        </div>
                    </li>
                    <li class="nav-item dropdown">
                        <a
                            class="nav-link header-item"
                            href="#"
                            id="navbarDropdownBlog"
                            role="button"
                            data-bs-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                        >
                            Blog <i class="fas fa-caret-down"></i>
                        </a>
                        <div
                            class="dropdown-menu p-3"
                            aria-labelledby="navbarDropdownBlog"
                        >
                            <a class="dropdown-item p-2" href="#">Học Tiếng Anh</a>
                            <a class="dropdown-item p-2" href="#"
                                >Học Tiếng Trung</a
                            >
                            <a class="dropdown-item p-2" href="#">Học Tiếng Nhật</a>
                            <a class="dropdown-item p-2" href="#">Học Tiếng Hàn</a>
                            <a class="dropdown-item p-2" href="#">Sự Kiện</a>
                            <a class="dropdown-item p-2" href="#"
                                >Vinh Danh Học Viên Điểm Cao</a
                            >
                        </div>
                    </li>
                </ul>
                <!--
			
				<li class="nav-item "><a class="nav-link header-item" href="#">Khóa
						học của tôi</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownProfile" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img src="https://prep.vn/_nuxt/default-avatar.28543647.jpg" alt="Profile Image" class="rounded-circle" width="40" height="40">
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdownProfile">
                        <div class="d-flex align-items-center mb-2">
                            <img src="https://prep.vn/_nuxt/default-avatar.28543647.jpg" alt="Profile Image" class="rounded-circle" width="40" height="40">
                            <div class="flex-column">
                                <span>Trần Dương Thiệu</span>
                                <span>thieu098dm3@gmail.com</span>
                            </div>
                        </div>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item p-2" href="#">Khóa học của tôi</a>
                        <a class="dropdown-item p-2" href="#">Trao đổi về bài chấm chữa</a>
                        <a class="dropdown-item p-2" href="#">Hồ sơ học tập</a>
                        <a class="dropdown-item p-2" href="#">Cài đặt</a>
                        <a class="dropdown-item p-2 text-danger" href="#">Đăng xuất</a>
                    </div>
                </li>
                -->
                <a href="authentication/login" class="btn btn-primary">
                    Bắt đầu học <i class="fa-solid fa-arrow-right"></i>
                </a>
            </div>
        </nav>
    </body>
</html>

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
		<%-- 
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
		--%>
		<a href="/Ielts-listening2/authentication/login"
			class="rounded-xl bg-blue-500 text-white py-2 px-3 font-semibold text-sm">
			<span>Bắt đầu học </span> <i class="fa fa-solid fa-arrow-right"></i>
		</a>
	</div>
</body>
</html>