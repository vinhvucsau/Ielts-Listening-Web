<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>

	<div style="height: 60px; background-color: red" class="header-admin">HEADER
		ADMIN</div>

	<div
		class="admin-taobode container-fluid p-0 m-0 align-items-center d-flex justify-content-center">
		<div class="row g-4 m-0">
			<div
				class="col col-8 admin-taobode-left position-relative text-center ">
				<h1 class="text--title color-blue--primary">${TestID }</h1>
				<p class="text--description lh-sm">Bộ đề Cam kinh điển đầy đủ
					giái thích đáp án chi tiết. Luyện đề IELTS Essential Guide mới nhất
					với đầy đủ 4 kỹ năng, giúp thí sinh tự tin khi va chạm với mọi dạng
					đề.</p>
				<a
					class=" btn btn-primary d-flex justify-content-center align-items-center bg-color-green--medium color-white text--h4 rounder-8 align-middle mx-auto mb-5 mt-5 wh-100 fs-4 "
					href="#" role="button" id="btn-open-popup"
					style="height: 70px; line-height: 50px;">Danh Sách Part</a>

				<div class="row g-4 danhsachbode">
					<!-- loop -->

					<!-- tạo biến bên ngoài -->
					<c:set var="totalCount" value="0" />


					<c:forEach var="t" items="${listpart }">
						<!-- Tăng giá trị của biến bên ngoài mỗi lần lặp -->
						<c:set var="totalCount" value="${totalCount + 1}" />

						<div class="bodethi mt-5">

							<button value="${t.partId}"
								class="accordion d-flex justify-content-between align-items-center text--h3 color-white bg-color-blue--primary rounder-8 py-4">
								<span class="accordion-order"></span> <span
									class="accordion-title ms-4 fs-5">Part ${t.number }</span>

								<div class="icon-list d-flex ">
									<a href="#" class="btn-openpopup icon-link icon-update"
										value="${t.partId }"> <i
										class="fa-solid fa-pen me-4 color-white"></i>
									</a> <a href="<c:url value='/admin/deleteTopic?id=${t.partId}'/>"
										class="icon-link icon-delete"> <i
										class="fa-solid fa-trash color-white"></i>
									</a>
								</div>
							</button>

						</div>
					</c:forEach>
					<c:if test="${totalCount < 4}">
						<div calss="d-flex justify-content-center	 align-items-center">
							<a href="#" class="btn-open-popupTest icon-link icon-update "
								id="" value="${TestID}"> <i
								class="fa-solid fa-plus me-4 color-blue--primary "></i> Tạo part
								mới
							</a>
						</div>
					</c:if>

				</div>
			</div>

			<div class="col col-4 admin-taobode-right">
				<div class="card-cover border-0 bg-color-grey">
					<span class="card__text text--description">Chi tiết</span> <img
						class="card__img shadow-black" src="" alt="hinh anh bo de">
					<div class="card-body p-0">
						<h2 class="card-body__title text--h2 color-black">${TestID }</h2>
						<p class="card-body__text text--description color-black">Lorem
							ipsum dolor sit amet consectetur adipisicing elit. Vero,
							necessitatibus quisquam! Quasi ipsa repellat necessitatibus
							consectetur dolores. Dolores, perferendis. Architecto esse, ut
							minima iusto cumque commodi? Expedita tempora numquam omnis!</p>
					</div>
					<div class="card-list text--description color-blue--primary">
						<div class="card-list__group">
							<i class="group__icon fa-solid fa-book-open"></i> <span
								class="group__content">4 Part</span>
						</div>
						<div class="card-list__group">
							<i class="group__icon fa-solid fa-clock"></i> <span
								class="group__content">180p</span>
						</div>
						<div class="card-list__group">
							<i class="group__icon fa-solid fa-eye"></i> <span
								class="group__content">100 lượt truy cập</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:if test="${not empty messSuccess }">${messSuccess}</c:if>
	<c:if test="${not empty messError }">${messError}</c:if>
	<h2>${messSuccess}</h2>
	<h2>${messError}</h2>
	<!-- popup add part mới -->

	<div class="popup_addpart container-fluid">

		<div class="row">
			<div
				class=" bg-primary text-white popup-group d-flex justify-content-between align-items-center rounded-top py-md-3 fs-5">
				<span class="title">ADD PART</span> <i class="fa-solid fa-xmark"
					id="btn-close"></i>
			</div>
			<form action="add_listpart" method="POST" class="form-popup"
				enctype="multipart/form-data" style="background-color: lavender;">
				<div class="container-fluid">
					<div class="row">
						<div class="col-sm-8">
							<div
								class="popup-upload d-flex justify-content-between align-items-center text-h3 mb-3">
								<label for="audioUpload" class="popup-upload_Audio">Upload
									Audio</label> <input type="file" name="audio" id="audioUpload"
									accept="audio/*">
							</div>
							<div
								class="popup-title d-flex justify-content-between align-items-center text-h3 mb-3">
								<span class="popup-title__text text-h3">Tên Part</span> <input
									type="text" name="name" id="" class="popup-title__input">
							</div>
						</div>
						<div class="col-sm-4" style="background-color: lavenderblush;">.col-sm-8</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!-- popup Tao bo de-->
	<div class="popup" id="popup-add-bo-de">
		<div
			class="popup-group d-flex justify-content-between align-items-center">
			<span class="title">Part</span> <i class="fa-solid fa-xmark"
				id="btn-close"></i>
		</div>

		<form action="addTopic" method="POST" class="form-popup"
			enctype="multipart/form-data">
			<div
				class="popup-upload d-flex justify-content-between align-items-center">
				<span class="popup-upload__text">upload_de_thi</span> <input
					type="file" name="image" id="" class="popup-upload__input"
					accept="image/jpeg, image/png">
			</div>
			<div
				class="popup-upload d-flex justify-content-between align-items-center">
				<span class="popup-upload__text">upload_audio</span> <input
					type="file" name="image" id="" class="popup-upload__input"
					accept="image/jpeg, image/png">
			</div>
			<div
				class="popup-title d-flex justify-content-between align-items-center">
				<span class="popup-title__text">Ten Part</span> <input type="text"
					name="name" id="" class="popup-title__input">
			</div>
			<div
				class="popup-descript d-flex justify-content-between align-items-center">
				<span class="popup-descript__text">Thoi Gian</span> <input
					type="text" name="description" id="" class="popup-descript__input">
			</div>
			<div
				class="popup-cost d-flex justify-content-between align-items-center">
				<span class="popup-cost__text">Tra Loi</span> <input type="text"
					name="cost" id="" class="popup-cost__input">
			</div>
			<input style="display: none !important" type="text" name="id" id=""
				class="popup-id_input"> <input type="submit"
				value="hoan thanh" onclick="show()">
		</form>
	</div>

	<script>
		// Lấy tham chiếu đến cửa sổ modal và nút mở cửa sổ modal
		var modal = document.getElementById("popup-add-bo-de");
		var btnOpenPopup = document.querySelector(".btn-open-popupTest");
		// Thêm sự kiện nhấp chuột cho nút mở cửa sổ modal
		btnOpenPopup.addEventListener("click", function() {
			// Hiển thị cửa sổ modal khi nút được nhấp
			modal.style.display = "block";
		});
		// Đóng cửa sổ modal khi nút đóng được nhấp
		var closePopup = document.getElementById("btn-close");
		closePopup.onclick = function() {
			modal.style.display = "none";
		};
	</script>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>