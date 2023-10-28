<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

.luyende-testset-list-de-left {
	background: var(--color-light-grey, #F3F3F3);
	display: flex;
	height: 300px;
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
			<div class="luyende-testset-cong-cu  " style="padding: 50px 0;">
				<div class="row">
					<div class="col-5 ">
						<h2>Danh sách đề</h2>
					</div>
					<div class="col-7 luyende-testset-cong-cu-loc">
						<div style="font-size: 20px;" class="mx-3">Lọc theo</div>
						<select class="form-select" aria-label="Default select example"
							style="width: 50%;">
							<option selected>Tất cả trạng thái làm bài</option>
							<option value="1">Tất cả trạng thái làm bài</option>
							<option value="2">Chưa làm bài</option>
							<option value="3">Đã làm bài</option>
						</select>
						<div
							class="py-1 w-100 col-xl flex-grow-1 d-flex align-items-center justify-content-end position-relative border-2">
							<span class="input-group-text px-3 border-0" id="basic-addon1"
								style="background-color: white; color: rgb(107, 114, 128);">
								<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20"
									fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
	  					<path
										d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
					</svg>
</span> <input type="text" class="form-control py-3 fs-5 border-0"
								placeholder="Tìm kiếm" aria-label="Search"
								aria-describedby="basic-addon1">
						</div>

					</div>
				</div>
			</div>
			<div class="luyende-testset-list-de">

				<div class="luyende-testset-list-de-left col-6"></div>
				<div class="luyende-testset-list-de-right col-6"></div>

			</div>
		</div>
	</div>
</body>
</html>