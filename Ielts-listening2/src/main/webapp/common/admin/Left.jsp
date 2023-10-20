<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://unpkg.com/tailwindcss@2.2.19/dist/tailwind.min.css" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
</head>
<body>
	<div class="w-full min-h-screen border flex flex-col px-3 py-5 gap-5 overflow-y-auto">

		<div class="flex gap-3 items-center">
			<div class="bg-black rounded-md w-12 h-12">IMG</div>
			<span>English Center</span>
		</div>
		<div class="flex flex-col">
			<span class=" text-gray-400"> Trang chủ </span>
			<div
				class="flex items-center gap-3 px-4 py-2 hover:bg-blue-100 hover:text-blue-600  rounded-xl cursor-pointer duration-500">
				<i class="fas fa-solid fa-house"></i> <span class="font-semibold">Trang
					chủ</span>
			</div>
		</div>
		<div class="flex flex-col">
			<span class=" text-gray-300">Người dùng</span>
			<div
				class="flex items-center justify-between rounded-xl group hover:bg-blue-100 hover:text-blue-600  px-4 py-2 cursor-pointer duration-500">
				<div class="flex items-center gap-3  ">
					<i class=" far fa-regular fa-user"></i><span class="font-semibold">Người
						dùng</span>
				</div>
				<div
					class="text-blue-500 text-xs px-1 py-[2px] rounded-full shadow-md shadow-blue-200 group-hover:bg-blue-500 group-hover:shadow-lg group-hover:text-white duration-500">
					10</div>
			</div>
		</div>
		<div class="flex flex-col">
			<span class=" text-gray-300"> Khóa học </span>
			<div
				class="flex items-center justify-between rounded-xl group hover:bg-blue-100 hover:text-blue-600  px-4 py-2 cursor-pointer duration-500">
				<div class="flex items-center gap-3  ">
					<i class="far fa-regular fa-list-check"></i><span
						class="font-semibold">Khóa học đang bán</span>
				</div>
				<div
					class="text-blue-500 text-xs px-1 py-[2px] rounded-full shadow-md shadow-blue-200 group-hover:bg-blue-500 group-hover:shadow-lg group-hover:text-white duration-500">
					10</div>
			</div>
			<div
				class="flex items-center justify-between rounded-xl group hover:bg-blue-100 hover:text-blue-600  px-4 py-2 cursor-pointer duration-500">
				<div class="flex items-center gap-3  ">
					<i class="far fa-regular fa-circle-check"></i> <span
						class="font-semibold">Khóa học chờ duyệt</span>
				</div>
				<div
					class="text-blue-500 text-xs px-1 py-[2px] rounded-full shadow-md shadow-blue-200 group-hover:bg-blue-500 group-hover:shadow-lg group-hover:text-white duration-500">
					10</div>
			</div>
		</div>

		<div class="flex flex-col">
			<span class=" text-gray-300"> Luyện đề </span>
			<div
				class="flex items-center justify-between rounded-xl group hover:bg-blue-100 hover:text-blue-600  px-4 py-2 cursor-pointer duration-500">
				<div class="flex items-center gap-3  ">
					<i class="far fa-regular fa-book-open"></i> <span
						class="font-semibold">Đề thi Listening</span>
				</div>

			</div>
		</div>
		<div class="flex flex-col">
			<span class=" text-gray-300"> BLOGS</span>
			<div
				class="flex items-center justify-between rounded-xl group hover:bg-blue-100 hover:text-blue-600  px-4 py-2 cursor-pointer duration-500">
				<div class="flex items-center gap-3  ">
					<i class="fab fa-brands fa-blogger-b"></i> <span
						class="font-semibold">Blogs</span>
				</div>
				<div
					class="text-blue-500 text-xs px-1 py-[2px] rounded-full shadow-md shadow-blue-200 group-hover:bg-blue-500 group-hover:shadow-lg group-hover:text-white duration-500">
					10</div>
			</div>
		</div>
		<div class="flex flex-col">
			<span class=" text-gray-300"> Doanh thu </span>
			<div
				class="flex items-center justify-between rounded-xl group hover:bg-blue-100 hover:text-blue-600  px-4 py-2 cursor-pointer duration-500">
				<div class="flex items-center gap-3  ">
					<i class="fa fa-regular fa-wallet"></i> <span class="font-semibold">Ví</span>
				</div>

			</div>
		</div>
		<div
			class="flex items-center justify-between rounded-xl group hover:bg-blue-100 hover:text-blue-600  px-4 py-2 cursor-pointer duration-500">
			<div class="flex items-center gap-3  ">
				<i class="fas fa-solid fa-arrow-right-from-bracket"></i> <span
					class="font-semibold">Đăng xuất</span>
			</div>

		</div>
	</div>
</body>
</html>