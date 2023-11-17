<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
Long count = (Long) request.getAttribute("countCourse");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
</head>
<body>

	<style>
.dropdown-item:hover {
	background-color: #0071f9 !important;
	color: white;
}

.adminkhoahoc-course--detail:hover {
	cursor: pointer;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0
		rgba(0, 0, 0, 0.19);
}

.adminkhoahoc-course--detail {
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.1), 0 6px 20px 0
		rgba(0, 0, 0, 0.05);
}

.card-text {
	display: -webkit-box;
	overflow: hidden;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
}

.adminkhoahoc-course--detail {
	margin-bottom: 60px;
	margin-right: 40px;
}
</style>

	<div class="adminkhoahoc container-fluid p-0 m-0 row">

		<h1 class="adminkhoahoc-title text-center mb-4">
			Lộ Trình Học <span class="color-blue--primary">IELTS</span> Toàn
			Diện
		</h1>
		<div class="adminkhoahoc-description w-75 text-center mx-auto mb-3">
			<span style="color: rgb(113, 113, 113)">Lorem ipsum dolor sit
				amet consectetur. Cras ultricies sapien venenatis vulputate felis.
				Non hendrerit lectus enim semper et nisl nunc lobortis ultrices.</span>
		</div>
		<div
			class="adminkhoahoc-button d-flex flex-row justify-content-center">
			<button type="button" class="btn mb-5"
				style="background-color: rgb(0, 177, 53)">
				<span style="color: white">Thêm Khóa Học</span>
			</button>
		</div>

		<div>
			<div class="d-flex flex-row justify-content-between mb-4">

				<div class="adminkhoahoc-soluong">
					<h5 class="adminkhoahoc-filter-sumcourse my-1">
						<p style="color: rgb(101, 101, 101)" class="my-auto"><%=count%>
							Khóa Học
						</p>
					</h5>
				</div>

				<div class="adminkhoahoc-filter d-flex justify-content-between"
					style="width: 500px">
					<div class="d-flex  adminkhoahoc-filter--rate ">
						<p class="my-auto">Rate:</p>
						<div class="dropdown dropdown-rate my-auto ms-2">
							<button
								class="btn bg-color-white dropdown-toggle border border-secondary-subtle"
								type="button" data-bs-toggle="dropdown" aria-expanded="false"
								style="width: 160px">
								<span class="me-3">Mặc định</span>
							</button>
							<ul class="dropdown-menu bg-color-grey">
								<li><a class="dropdown-item " href="#">Cao đến thấp</a></li>
								<li><a class="dropdown-item " href="#">Thấp đến cao</a></li>
							</ul>
						</div>
					</div>

					<div class="d-flex  adminkhoahoc-filter--gia ">
						<p class="my-auto">Giá:</p>
						<div class="dropdown dropdown-gia my-auto ms-2">
							<button
								class="btn bg-color-white dropdown-toggle border border-secondary-subtle "
								type="button" data-bs-toggle="dropdown" aria-expanded="false"
								style="width: 160px">
								<span class="me-3">Mặc định</span>
							</button>
							<ul class="dropdown-menu bg-color-grey">
								<li><a class="dropdown-item" href="admin/khoahoc/caodenthap">Cao đến thấp</a></li>
								<li><a class="dropdown-item" href="#">Thấp đến cao</a></li>
							</ul>
						</div>
					</div>


				</div>

			</div>
			<div class="container-fluid p-0 m-0 ">
				<div class="adminkhoahoc-course d-flex flex-wrap">
					<c:forEach var="i" items="${course}">				
						<div class=" d-flex justify-content-center">
							<div class="card adminkhoahoc-course--detail"
								style="width: 14rem;">
								<img style="cursor: pointer" src="${i.image }" width="100%"
									height="150px" />
								<div class="card-body adminkhoahoc-course--detail--info pb-0">
									<p class="card-text text--h3 fs-5 my-0">${i.courseName}</p>
									<p class="card-text" style="color: rgb(113, 113, 113)">${i.description}</p>
								</div>
								<div
									class="card-body adminkhoahoc-course--detail--cost mt-2 py-0 d-flex justify-content-between align-item-center">
									<p class="card-text color-blue--primary fw-bold fs-5">${i.cost}</p>
									<p class="card-text fw-bold fs-5"
										style="color: rgb(113, 113, 113)">VND</p>
								</div>

								<div
									class="rating my-0 d-flex flex-row justify-content-between mx-3">
									<div class="rating-star">
										<span class="star" data-rating="1">★</span> <span class="star"
											data-rating="2">★</span> <span class="star" data-rating="3">★</span>
										<span class="star" data-rating="4">★</span> <span class="star"
											data-rating="5">★</span>
									</div>
									12345
									<%-- <c:forEach var="i" items="${listStar}">
									123
									${listStar}
										<div class="rating-value my-0">${i }</div>
									</c:forEach> --%>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>

		<script>
			const dropDownRateItem = document.querySelectorAll(".dropdown-rate .dropdown-item");
			const dropDownRateBtn = document.querySelector(".dropdown-rate button");
			if(dropDownRateItem){
				dropDownRateItem.forEach((dropdownItem) => {
					dropdownItem.addEventListener("click", (e) => {
						e.preventDefault();
						dropDownRateBtn.querySelector("span").textContent = dropdownItem.textContent;
					
					})
				})
			}
			
			
			const dropDownGiaItem = document.querySelectorAll(".dropdown-gia .dropdown-item");
			const dropDownGiaBtn = document.querySelector(".dropdown-gia button");
			if(dropDownGiaItem){
				dropDownGiaItem.forEach((dropdownItem) => {
					dropdownItem.addEventListener("click", (e) => {
						e.preventDefault();
						dropDownGiaBtn.textContent = dropdownItem.textContent;
					})
				})
			}
			
			
			
			 var ratingValue = 4; // Số thập phân bạn có

			  // Lấy tất cả các sao
			  var stars = document.querySelectorAll('.star');
			  var ratingDisplay = document.querySelector('.rating-value');

			  // Kích hoạt sao dựa trên điểm số
			  for (var i = 0; i < stars.length; i++) {
			    if (i < Math.floor(ratingValue)) {
			      stars[i].classList.add('active');
			    }
			  }

			  // Xử lý nửa ngôi sao nếu có
			  if (ratingValue - Math.floor(ratingValue) >= 0.5) {
			    stars[Math.floor(ratingValue)].classList.add('half-rated');
			  }

			  // Hiển thị điểm số thập phân
			  ratingDisplay.textContent = ratingValue;
		</script>
	</div>

</body>
</html>