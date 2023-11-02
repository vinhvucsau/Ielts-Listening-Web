<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>

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
				<div class="row d-flex flex-column justify-content-center align-items-center">
					<div style="width: fit-content"
						class="rounded-4 bg-black luyende-testset-info-de-content-tile px-3 py-1 text-center color-white">
						0/36 Đề</div>

					<h1 class="text-center  mt-4 mb-3">IELTS Essential Guide</h1>
					<p class="text-center">Bộ đề Cam kinh điển đầy đủ giái thích
						đáp án chi tiết. Luyện đề IELTS Essential Guide mới nhất với đầy
						đủ 4 kỹ năng, giúp thí sinh tự tin khi va chạm với mọi dạng đề.</p>

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

						<select class="form-select" aria-label="Default select example"
							style="width: 50%;">
							<option selected>Tất cả trạng thái làm bài</option>
							<option value="1">Tất cả trạng thái làm bài</option>
							<option value="2">Chưa làm bài</option>
							<option value="3">Đã làm bài</option>
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
										placeholder="Tìm kiếm" aria-label="Search">
								</div>

							</form>
						</div>

					</div>
				</div>
			</div>
			<div class="luyende-testset-list-de row">
			<c:forEach var="i" items="${listMocktest}">
				
			
				<div class="luyende-testset-list-de-left col-6">
					<div class="card" style="border: 0;">
						<div class="card-body">
							<div class="card-title text--h3 ">${i.testName}</div>
							<div class="p-3 border bg-white d-flex flex-row rounded-3">
								<div
									class="rounded-3 d-flex justify-content-center align-items-center fw-bold"
									style="background-color: rgb(240, 247, 255); color: rgb(0, 74, 185); width: 50px; height: 50px;">
									<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32"
										fill="currentColor" class="bi bi-headphones fw-bold"
										viewBox="0 0 16 16">
  								<path
											d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z" />
							</svg>
								</div>
								<p
									class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${i.topicTests.topicId}</p>
							</div>

						</div>
					</div>
				</div>
				</c:forEach>
			</div>


		</div>
	</div>
		<table border="1" style="width: 100%">
		<tr>
			<td>ID</td>
			<td>name</td>
			<td>topicId</td>
			
		</tr>
			<c:forEach var="i" items="${listEnrolltest}">
				<tr>
					<td>${i.enrrolId}</td>
					<td>${i.mockTests.TopicTest.topicId}</td>
					<td>${i.users.userId}</td>
				</tr>
			</c:forEach>
		</table>
	
</body>
</html>