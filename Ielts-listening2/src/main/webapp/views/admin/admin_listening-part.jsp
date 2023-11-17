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
<style>
.ck-editor__editable {
	height: 200px; /* Đặt chiều cao mong muốn tại đây */
}
</style>

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

				<div class="row g-4 danhsachbode ">
					<!-- loop -->

					<!-- tạo biến bên ngoài -->
					<c:set var="totalCount" value="0" />

					<c:forEach var="t" items="${listpart }">
						<!-- Tăng giá trị của biến bên ngoài mỗi lần lặp -->
						<c:set var="totalCount" value="${totalCount + 1}" />

						<div class=" bodethi mt-5" id="add_part_1234">

							<button"
								class="accordion d-flex justify-content-between align-items-center text--h3 color-white bg-color-blue--primary rounder-8 py-4">
								<span class="accordion-order"></span> <span
									class="accordion-title ms-4 fs-5">Part ${t.number }</span>

								<div class="icon-list d-flex ">
									<a href="#" class="btn-openpopup icon-link i111con-update"
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
						<div class="d-flex justify-content-center align-items-center">
							<a href="#" class="btnOpenPopup btn-open-popupTest icon-link icon-update"
								id="add_new_part" onclick="addNewPart()"> <i
								class="fa-solid fa-plus me-4 color-blue--primary"></i> Tạo part
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
								class="group__content">40p</span>
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
	<div class="popup_addpart" id="popup_add_danh_sach_list"
		style="display: none">
		<div class="col col-12 mt-5">
			<div
				class=" container-fluid pagination justify-content-center d-flex align-items-center mt-5 pt-5 "
				id="popup_addlist">
				<div class="row mt-5 pt-5">
					<div
						class="popup_title_add bg-primary text-white popup-group d-flex justify-content-between align-items-center rounded-top py-md-3 fs-5">
						<span class="title">ADD PART</span> <i class="fa-solid fa-xmark"
							id="btn-close"></i>
					</div>
					<form action="add_listpart" method="POST"
						class="form-popup rounded-bottom" enctype="multipart/form-data"
						style="background-color: lavender;">
						<div class="container-fluid">
							<div class="row">
								<div class="col-sm-8 border-end">
									<div
										class="popup-upload d-flex justify-content-between align-items-center text-h3 mb-4 mt-4">
										<label for="audioUpload" class="popup-upload_Audio">Upload
											Audio</label> <input type="file" name="audio" id="audioUpload"
											accept="audio/*">
									</div>
									<div
										class="popup-title d-flex justify-content-between align-items-center text-h3 mb-4 mt-3">
										<span class="popup-title__text text-h3">Tên Part</span> <input
											type="text" name="name" id=""
											class="popup-title__input border border-secondary">
									</div>
									<div
										class=" ck ck-content ck-editor__editable ck-rounded-corners ck-editor__editable_inline ck-blurred mb-3 border border-secondary text-h3 rounded"
										lang="en" dir="ltr" role="textbox"
										aria-label="Editor editing area: main" contenteditable="true">
										<p>This is some sample content.</p>
									</div>
								</div>
								<div class=" col-sm-4 ">
									<div
										class="popup-group d-flex justify-content-between align-items-center mb-1 fs-5 mt-2 mb-3 "
										onclick="addButton()">
										<span class="Text-h3-hold">Câu trả lời</span>
									</div>
									<div id="questions-container">
										<div
											class=" d-flex justify-content-between align-items-center text-h3 mb-4 mt-1">
											<span class="popup-title__text text-h3">Câu 1</span> <input
												type="text" name="name" id=""
												class="border border-secondary">
										</div>
										<div
											class=" d-flex justify-content-between align-items-center text-h3 mb-4 mt-1">
											<span class="popup-title__text text-h3">Câu 2</span> <input
												type="text" name="name" id=""
												class="border border-secondary">
										</div>
										<div
											class=" d-flex justify-content-between align-items-center text-h3 mb-4 mt-1">
											<span class="popup-title__text text-h3">Câu 3</span> <input
												type="text" name="name" id=""
												class="border border-secondary">
										</div>
										<div
											class=" d-flex justify-content-between align-items-center text-h3 mb-4 mt-1">
											<span class="popup-title__text text-h3">Câu 4</span> <input
												type="text" name="name" id=""
												class="border border-secondary">
										</div>
										<div
											class=" d-flex justify-content-between align-items-center text-h3 mb-4 mt-1"
											id="question-template">
											<span class="popup-title__text text-h3">Câu 5</span> <input
												type="text" name="name" id=""
												class="border border-secondary">
										</div>
									</div>

									<div>
										<a href="#" class="btn-add-question icon-link icon-update"
											id="btnAddQuestion" onclick="addQuestion()"> <i
											class="fa-solid fa-plus me-4 color-blue--primary border border-secondary "></i>
											Add question
										</a>
									</div>
								</div>

							</div>
						</div>
						<div class="mb-3">
							<input style="display: none !important" type="text" name="id"
								id="" class="popup-id_input mb-3">
							<button type="button" class="btn btn-primary btn-lg ms-3 h6"
								onclick="show()">Add</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>


	<script>
		document.addEventListener("DOMContentLoaded",
				function() {
					var popup = document
							.getElementById('popup_add_danh_sach_list');
					var btnOpenPopups = document
							.getElementsByClassName('btnOpenPopup');
					var btnClose = document.getElementById('btn-close');

					for (var i = 0; i < btnOpenPopups.length; i++) {
						btnOpenPopups[i].addEventListener('click', function() {
							popup.style.display = 'flex';
						});
					}

					btnClose.addEventListener('click', function() {
						popup.style.display = 'none';
					});

					function show() {
						// Xử lý logic khi nhấn nút Add
						// ...
						// Sau khi xử lý, ẩn popup
						popup.style.display = 'none';
					}
				});
	</script>


	<script>
		let questionCounter = 6;
		function addQuestion() {
			const questionsContainer = document
					.getElementById('questions-container');
			const questionTemplate = document
					.getElementById('question-template');
			// Clone mẫu câu hỏi
			const newQuestion = questionTemplate.cloneNode(true);
			// Thay đổi số câu hỏi
			const questionSpan = newQuestion
					.querySelector('.popup-title__text');
			questionSpan.textContent = 'Câu ' + questionCounter;
			// Thêm câu hỏi vào container
			questionsContainer.appendChild(newQuestion);
			// Tăng số lượng câu hỏi
			questionCounter++;
		}
	</script>
	<!-- popup add part mới -->
	

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>