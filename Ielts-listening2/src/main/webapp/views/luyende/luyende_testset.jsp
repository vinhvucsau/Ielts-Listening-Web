<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<style>
.luyende-testset-info-de {
	background: var(--color-light-grey, #F3F3F3);
	display: flex;
	height: 300px;
}

.luyende-testset-link-paper {
	height: 64px;
}

.luyende-testset-cong-cu {
	height: 144px;
}

.luyende-testset-info-de-content-tile {
	display: flex;
	padding: var(--spacing-xs, 5px) 15px;
	justify-content: center;
	align-items: center;
	gap: var(--spacing-s, 10px);
	justify-content: center;
	align-items: center;
}

.luyende-testset-cong-cu-loc {
	display: flex;
	align-items: center;
}

</style>
	
	<div class="luyende-testset">
		<div class="luyende-testset-link-paper container-xxl"></div>
		<div class="luyende-testset-info-de w-100 container-fluid py-5">

			<div class="col"></div>
			<div class="luyende-testset-info-de-content col-8 ">
				<div
					class="row d-flex flex-column justify-content-center align-items-center">
					

					<h1 class="text-center  mt-4 mb-3">${topic_test.topicName}</h1>
					<p class="text-center">${topic_test.description}</p>

				</div>

			</div>
			<div class="col"></div>


		</div>
		<div class="container-xxl">
			<div class="luyende-testset-cong-cu " style="padding: 50px 0;">
				<div class="row  d-flex" style="display: flex; align-items: center;">
					<div class="col-5  text--h3">
						<h2>
							<b>Danh sách đề</b>
						</h2>
					</div>

					<div class="col-7 luyende-testset-cong-cu-loc">

						<div style="font-size: 20px;" class="col-2">Lọc theo</div>

						<select id="selectOption" class="form-select"
							aria-label="Default select example" style="width: 50%;">
							<option  value="tatCa">Tất cả trạng thái làm bài</option>
							<option value="chuaLam">Chưa làm bài</option>
							<option value="dangLam">Đang làm bài</option>
							<option value="daLam">Đã làm bài</option>

						</select>
						<div class="search-bar">
							<form class="d-flex mx-2">
								<div class="input-group">
									<span class="input-group-text bg-white"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
	  					<path
												d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
					</svg>
									</span> <input class="form-control" type="search"
										placeholder="Tìm kiếm" aria-label="Search" name="textSearch">
								</div>

							</form>
						</div>

					</div>
				</div>
			</div>
			<div class="luyende-testset-list-de row">
				<c:forEach var="i" items="${listMocktest}">
				<c:if test="${not empty currentUser}">
				
				<div  class=" col-6 ">
				<form action="luyende-testset" method="post">
				
				<input type="hidden" name="testId" value="${i.testId }" />
				<a href="#"  onclick="event.preventDefault();this.parentNode.submit()" style="color:#64748b;">
						<c:set var="found" value="false" />
						<c:forEach var="en" items="${listEnrolltest}">
							<c:if test="${!found}">
								<c:choose>
									<c:when
										test="${i.testId == en.mockTests.testId && en.score >= 0 }">
										<div  class="luyende-testset-list-de col-12 luyende-da-lam">
										<div class="card" style="border: 0;">
											<div class="card-body">
												<div class="card-title text--h3 ">${i.testName}</div>
												<div class="p-3 border bg-white d-flex flex-row rounded-3"
													style="border-color: bg-color-green--medium">
													<div
														class="rounded-3 d-flex justify-content-center align-items-center fw-bold bg-color-green--medium color-white"
														style="width: 50px; height: 50px;">${en.score}</div>
													<p
														class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${i.description}</p>
												</div>
											</div>
										</div>
										</div>
										<c:set var="found" value="true" />
									</c:when>
									<c:when
										test="${i.testId == en.mockTests.testId && en.score < 0 }">
										<div  class="luyende-testset-list-de col-12 luyende-dang-lam">
										<div class="card" style="border: 0;">
											<div class="card-body">
												<div class="card-title text--h3 ">${i.testName}</div>
												<div class="p-3 border bg-white d-flex flex-row rounded-3"
													style="border-color: bg-color-green--medium">
													<div
														class="rounded-3 d-flex justify-content-center align-items-center fw-bold "
														style="background-color: #fef5d2; width: 50px; height: 50px;">

													</div>
													<p
														class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${i.description}</p>
												</div>
											</div>
										</div>
										</div>
										<c:set var="found" value="true" />
									</c:when>
								</c:choose>
							</c:if>

						</c:forEach>
						<c:if test="${!found}">
						<div class="luyende-testset-list-de col-12 luyende-chua-lam">
							<div class="card" style="border: 0;">
								<div class="card-body">
									<div class="card-title text--h3 ">${i.testName}</div>
									<div class="p-3 border bg-white d-flex flex-row rounded-3"
										style="border-color: bg-color-green--medium">
										<div
											class="rounded-3 d-flex justify-content-center align-items-center fw-bold"
											style="background-color: rgb(240, 247, 255); color: rgb(0, 74, 185); width: 50px; height: 50px;">
											<svg xmlns="http://www.w3.org/2000/svg" width="32"
												height="32" fill="currentColor"
												class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path
													d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z" />
							</svg>
										</div>
										<p
											class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${i.description}</p>
									</div>
									</div>
								</div>
							</div>
						</c:if>


					
				</a>
				</form>
				</div>
				</c:if>
				<c:if test="${ empty currentUser}">
				
				<div class="luyende-testset-list-de col-6 ">
							<div class="card" style="border: 0;">
								<div class="card-body">
									<div class="card-title text--h3 ">${i.testName}</div>
									<div class="p-3 border bg-white d-flex flex-row rounded-3"
										style="border-color: bg-color-green--medium">
										<div
											class="rounded-3 d-flex justify-content-center align-items-center fw-bold"
											style="background-color: rgb(240, 247, 255); color: rgb(0, 74, 185); width: 50px; height: 50px;">
											<svg xmlns="http://www.w3.org/2000/svg" width="32"
												height="32" fill="currentColor"
												class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path
													d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z" />
							</svg>
										</div>
										<p
											class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${i.description}</p>
									</div>
									</div>
								</div>
							</div>
				
				</c:if>
				</c:forEach>
				
			</div>


		</div>
	</div>
	
<script>
  var selectOption = document.getElementById("selectOption");

  // Lắng nghe sự kiện khi giá trị của select thay đổi
  selectOption.addEventListener("change", function() {
    // Lấy giá trị được chọn trong select
    var selectedValue = selectOption.value;
    var elementsChuaLam = document.getElementsByClassName("luyende-chua-lam");
    var elementsDangLam = document.getElementsByClassName("luyende-dang-lam");
    var elementsDaLam = document.getElementsByClassName("luyende-da-lam");

    if (selectedValue === "tatCa") {
      showElements(elementsChuaLam);
      showElements(elementsDangLam);
      showElements(elementsDaLam);
    } else if (selectedValue === "chuaLam") {
      showElements(elementsChuaLam);
      hideElements(elementsDangLam);
      hideElements(elementsDaLam);
    } else if (selectedValue === "dangLam") {
      hideElements(elementsChuaLam);
      showElements(elementsDangLam);
      hideElements(elementsDaLam);
    } else if (selectedValue === "daLam") {
      hideElements(elementsChuaLam);
      hideElements(elementsDangLam);
      showElements(elementsDaLam);
    }
  });

  // Hiển thị các phần tử
  function showElements(elements) {
    for (var i = 0; i < elements.length; i++) {
      elements[i].style.display = "block";
    }
  }

  // Ẩn các phần tử
  function hideElements(elements) {
    for (var i = 0; i < elements.length; i++) {
      elements[i].style.display = "none";
    }
  }
</script>
</body>
</html>


