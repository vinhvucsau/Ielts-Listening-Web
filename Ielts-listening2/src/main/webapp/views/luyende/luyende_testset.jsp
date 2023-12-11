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
	height: 200px;
	justify-content: center;
    align-items: center;
}

.luyende-testset-link-paper {
	height: 64px;
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
		<section class="pt-8">
                <div class="container mx-4">
                    <div class="row">
                        <div class="col-12">	
                        	<a href="luyen-de-home" class="link-primary fw-semibold">
                        		<div class="d-flex align-items-center">
                        			<i class="fe fe-arrow-left"></i>
                                	Trở về
                        		</div>
                            </a>
                            <!-- caption-->
                            <div class="d-flex my-4 align-items-center justify-content-between">
                            	<h1 class="fw-bold mb-0 display-4 lh-1 text-dark">${topic_test.topicName}</h1>
	                            <div class="px-3 py-2 rounded-3 d-flex flex-column justify-content-center text-center bg-dark text-light"
									style="height: 40px; width: 80px">
									<p class="fw-semibold h-25" style="font-size: 15px;">0/${topic_test.mockTests.size()} đề</p>
								</div>
                            </div>
                            <div class="col-md-8 col-12">
                       		<p style="font-size: 15px;">${topic_test.description}</p>
                        </div>
                        </div>
                    </div>
                </div>
        </section>
		<div class="container m-4 p-4 bg-white rounded-3">
			<div class="luyende-testset-cong-cu ">
				<div class="row  d-flex pb-4" style="display: flex; align-items: center;">
					<div class="col-5  text--h3">
						<h2>
							<b>Danh sách đề</b>
						</h2>
					</div>

					<div class="col-7 luyende-testset-cong-cu-loc justify-content-end">

						<div style="font-size: 15px;" class="ps-5 col-2">Lọc theo</div>

						<select id="selectOption" class="form-select"
							aria-label="Default select example" style="width: 50%;">
							<option  value="tatCa">Tất cả trạng thái làm bài</option>
							<option value="chuaLam">Chưa làm bài</option>
							<option value="dangLam">Đang làm bài</option>
							<option value="daLam">Đã làm bài</option>

						</select>
					</div>
				</div>
			</div>
			
			<div class="luyende-testset-list-de row">
				<c:forEach var="i" items="${listMocktest}">
				<c:if test="${not empty currentUser}">
				
				
				
				
				
				<%-- <input type="hidden" name="testId" value="${i.testId }" />
				<a href="#"  onclick="event.preventDefault();this.parentNode.submit()" style="color:#64748b;"> --%>
						<c:set var="found" value="false" />
						<c:forEach var="en" items="${listEnrolltest}">
							<c:if test="${!found}">
								<c:choose>
									<c:when
										test="${i.testId == en.mockTests.testId && en.score >= 0 }">
										<div  class="luyende-testset-list-de col-6 luyende-da-lam">
										<form action="luyende-testset " method="post">
										<input type="hidden" name="testId" value="${i.testId }" />
										<a href="#"  onclick="event.preventDefault();this.parentNode.submit()" style="color:#64748b;">
										<div class="card" style="border: 0; box-shadow: none;">
											<div class="card-body">
												<div class="p-3 border bg-white d-flex flex-row rounded-3"
													style="border-color: bg-color-green--medium">
													<div
														class="rounded-3 d-flex justify-content-center align-items-center fw-bold bg-color-green--medium color-white"
														style="width: 50px; height: 50px;">${en.score}</div>
													<p
														class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${i.testName}</p>
												</div>
											</div>
										</div>
										</a>
										</form>
										</div>
										<c:set var="found" value="true" />
									</c:when>
									<c:when
										test="${i.testId == en.mockTests.testId && en.score < 0 }">
										<div  class="luyende-testset-list-de col-6 luyende-dang-lam">
										<form action="luyende-testset " method="post">
										<input type="hidden" name="testId" value="${i.testId }" />
										<a href="#"  onclick="event.preventDefault();this.parentNode.submit()" style="color:#64748b;">
										<div class="card" style="border: 0; box-shadow: none;">
											<div class="card-body">
												<div class="p-3 border bg-white d-flex flex-row rounded-3"
													style="border-color: bg-color-green--medium">
													<div
														class="rounded-3 d-flex justify-content-center align-items-center fw-bold "
														style="background-color: #fef5d2; width: 50px; height: 50px;">

													</div>
													<p
														class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${i.testName}</p>
												</div>
											</div>
										</div>
										</a>
										</form>
										</div>
										<c:set var="found" value="true" />
									</c:when>
								</c:choose>
							</c:if>

						</c:forEach>
						<c:if test="${!found}">
						<div class="luyende-testset-list-de col-6 luyende-chua-lam">
						<form action="luyende-testset " method="post">
										<input type="hidden" name="testId" value="${i.testId }" />
										
						<a href="#"  onclick="event.preventDefault();this.parentNode.submit()" style="color:#64748b;">
							<div class="card" style="border: 0; box-shadow: none;">
								<div class="card-body">
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
											class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${i.testName}</p>
									</div>
									</div>
								</div>
								</a>
								</form>
							</div>
						</c:if>


					
				</a>
				
				
				
				
				</c:if>
				
				<c:if test="${ empty currentUser}">
				
				<div class="luyende-testset-list-de col-6 ">
							<div class="card bg-white" style="border: 0; box-shadow: none;">
								<div class="card-body">
									<div class="p-3 border bg-white d-flex flex-row justify-content-between rounded-3"
										style="border-color: bg-dark">
										<div class="d-flex">
											<div
												class="rounded-3 d-flex justify-content-center align-items-center fw-bold"
												style="background-color: rgb(240, 247, 255); color: rgb(0, 74, 185); width: 50px; height: 50px;">
												<svg xmlns="http://www.w3.org/2000/svg" width="32"
													height="32" fill="currentColor"
													class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
	  												<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z" />
												</svg>
											</div>
											<h4 class="fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${i.testName}</h4>
										</div>
										<div class="dropdown dropstart">
                                            <a class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#" role="button" id="courseDropdown1" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="fe fe-more-vertical"></i>
                                            </a>
                                            <div class="dropdown-menu" aria-labelledby="courseDropdown1" style="">
                                                <a class="dropdown-item" href="#">
                                                    Xem lịch sử làm bài
                                                </a>
                                                <a class="dropdown-item" href="#">
                                                    Làm lại
                                                </a>
                                            </div>
                                        </div>
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


