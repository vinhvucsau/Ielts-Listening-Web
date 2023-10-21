<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<style>
		.luyende {
			background-color: rgb(247, 247, 247);
			padding: 0px;
			margin: 0px;
		}
		.advertisement {
			margin: 0px;
			background-color: #DDE4FB;
			height: 450px;
		}
		.btn-1{
			background-color: rgb(240, 247, 255); 
			color:rgb(0, 74, 185);
			transition: 0.3s ease-out;
		}
		.btn-1:hover{
			color: white;
			background-color: rgb(0, 74, 185);
			
		}
		.nav-link{
			color: black;
		}
		li{
			transition: 0.6s ease-in-out;
		}
		.active, li:hover{
		background-color: white;
		color: rgb(0, 74, 185);
		}
	</style>
	<div class="luyende">
		<div class="w-100 advertisement"></div>
		<div class="px-40 py-20">
			<div class="bg-white px-4 py-4 rounded-4">
				<p class="fs-5 fw-bold" style="color: rgb(0, 74, 185)">Tiếp tục làm bài</p>
				<p class="fs-4 fw-bold">IELTS Essential Guide</p>
				<p class="fs-5 fw-bold" style="color: rgb(113,113,113)">Cam 18 - Test 2</p>
				<button class="btn-1 btn d-flex flex-row justify-content-center w-100 h-25 mb-3 mt-4 py-2 fs-5 fw-bold ">
					Tiếp tục làm bài
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="currentColor" class="bi bi-arrow-right ms-3 mt-1" viewBox="0 0 20 20">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>
			<p class="fs-3 fw-bold my-5">Hôm nay bạn muốn luyện</p>
			<ul class="nav fs-5 fw-bold justify-content-between w-50">
			  <li class="nav-item  ">
			    <a class="nav-link active rounded-3" href="#">Tất cả bộ đề</a>
			  </li>
			  <li class="nav-item ">
			    <a class="nav-link rounded-3" href="#">Bộ đề Dự đoán</a>
			  </li>
			  <li class="nav-item ">
			    <a class="nav-link rounded-3" href="#">Bộ đề HOT</a>
			  </li>
			</ul>
			<div class="input-group mt-5 ">
			  <span class="input-group-text px-3 border-0" id="basic-addon1" style="background-color: white; color: rgb(107,114,128);">
				  	<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
	  					<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
					</svg>
			  </span>
			  <input type="text" class="form-control py-3 fs-5 border-0" placeholder="Tìm kiếm" aria-label="Search" aria-describedby="basic-addon1">
			</div>
			<div class="w-100 bg-white px-4 py-4 my-5 rounded-4">
				<div class="relative intro d-flex flex-row">
					<img src="https://storage.googleapis.com/materials-elements/test-set/avatar/r3OyvbGQA2wpX7XhxP8Sw4dL3usbFra8LVI9pySn.png" width="150px"/>
					<div class="w-75 ">
						<p class="fs-4 fw-bold ">IELTS Essential Guide</p>
						<p style="color: rgb(123,137,155); font-size: 18px;">Bộ đề Cam kinh điển đầy đủ giái thích đáp án chi tiết. Luyện đề IELTS Essential Guide mới nhất với đầy đủ 4 kỹ năng, giúp thí sinh tự tin khi va chạm với mọi dạng đề.</p>
					</div>
					<div class="absolute right-0 py-1 px-4 rounded-3 mt-1" style="background-color: rgb(255,251,235)">
						<p class="fw-semibold" style="font-size: 18px;color: rgb(246,173,48)" >1/36 đề</p>
					</div>
				</div>
				<div class="overflow-hidden my-3">
				  <div class="row gy-4">
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(0,177,53); color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				   <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				  </div>
				</div>
				<button class="btn-1 btn d-flex flex-row justify-content-center h-25 mt-4 mx-auto py-2 px-3 fs-5 fw-bold">
					Xem thêm 30 đề
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="currentColor" class="bi bi-arrow-right ms-3 mt-1" viewBox="0 0 20 20">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>
			<div class="w-100 bg-white px-4 py-4 my-5 rounded-4">
				<div class="relative intro d-flex flex-row">
					<img src="https://storage.googleapis.com/materials-elements/test-set/avatar/EvA1DAUR4rGj4zAC9EAs84gWeQ3tKnML8jWQfIuB.png" width="150px"/>
					<div class="w-75 ">
						<p class="fs-4 fw-bold ">IELTS Preparation</p>
						<p style="color: rgb(123,137,155); font-size: 18px;">Bộ đề IELTS được nhiều thí sinh "săn đón" trong quá trình ôn thi IELTS tại nhà. Luyện tập các đề thi IELTS Preparation để bứt phá điểm số, vượt mốc 7.0 Overall nhanh chóng.</p>
					</div>
					<div class="absolute right-0 py-1 px-4 rounded-3 mt-1" style="background-color: rgb(243,244,246)">
						<p class="fw-semibold" style="font-size: 18px;" >0/20 đề</p>
					</div>
				</div>
				<div class="overflow-hidden my-3">
				  <div class="row gy-4">
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				   <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				  </div>
				</div>
				
				<button class="btn-1 btn d-flex flex-row justify-content-center h-25 mt-4 mx-auto py-2 px-3 fs-5 fw-bold">
					Xem thêm 14 đề
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="currentColor" class="bi bi-arrow-right ms-3 mt-1" viewBox="0 0 20 20">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>
			<div class="w-100 bg-white px-4 py-4 my-5 rounded-4">
				<div class="relative intro d-flex flex-row">
					<img src="https://storage.googleapis.com/materials-elements/test-set/avatar/r3OyvbGQA2wpX7XhxP8Sw4dL3usbFra8LVI9pySn.png" width="150px"/>
					<div class="w-75 ">
						<p class="fs-4 fw-bold ">IELTS Essential Guide</p>
						<p style="color: rgb(123,137,155); font-size: 18px;">Bộ đề IELTS uy tín được biên soạn bởi đơn vị tổ chức thi IELTS hàng đầu. Luyện ngay các đề thi IELTS Practice để rút ngắn thời gian trau dồi kiến thức, chạm tay vào band điểm mục tiêu chỉ trong vài tháng.</p>
					</div>
					<div class="absolute right-0 py-1 px-4 rounded-3 mt-1" style="background-color: rgb(0,177,53); color: white;">
						<p class="fw-semibold" style="font-size: 18px;" >9/9 đề</p>
					</div>
				</div>
				<div class="overflow-hidden my-3">
				  <div class="row gy-4">
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(0,177,53); color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(0,177,53); color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(0,177,53); color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(0,177,53); color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(0,177,53); color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(0,177,53); color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3">Cam 18 - Test 1</p>
				      </div>
				    </div>
				  </div>
				</div>
				<button class="btn-1 btn d-flex flex-row justify-content-center h-25 mt-4 mx-auto py-2 px-3 fs-5 fw-bold">
					Xem thêm 3 đề
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="currentColor" class="bi bi-arrow-right ms-3 mt-1" viewBox="0 0 20 20">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>
		</div>
		
		
	</div>
	<script>
		let currLi = document.querySelectorAll("li a")[0];
		const liList = document.querySelectorAll("li a");
		if (liList) {
			liList.forEach((li) => {
				li.addEventListener("click", (e) => {
					currLi.classList.remove("active");
					currLi = li;
					currLi.classList.add("active");
				})
			})
		}
	</script>
</body>
</html>