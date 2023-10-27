<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<style>
		.btn{
			transition: 0.3s ease-out;
		}
		.btn--2{
			background-color: #eceef1; 
		}
		.btn:hover{
			color: #fff !important;
			background-color: #0071F9 !important;
		}
		.ul--test li{
			transition: 0.6s ease-in-out;
		}
		.ul--test .active, .ul--test li:hover{
			background-color: white;
			color: rgb(0, 74, 185);
			border-radius: 0.5rem;
		}
		.px-7 {
			padding-left: 6rem !important;
			padding-right: 6rem ! important;
		}
		.py-7{
			padding-top: 6rem !important;
			padding-bottom: 6rem ! important;
		}
		input::-webkit-outer-spin-button,
		input::-webkit-inner-spin-button {
		  -webkit-appearance: none;
		  margin: 0;
		}
	</style>
	<div class="m-0 p-0" style="background-color: rgb(247, 247, 247); ">
		<div class="w-100 m-0" style="background-color: #DDE4FB; height: 450px;"></div>
		<div class="px-7 py-7">
			<div class="bg-white px-4 py-4 rounded-4">
				<p class="fs-5 fw-bold mb-0 color-blue--primary">Tiếp tục làm bài</p>
				<p class="fs-4 fw-bold mb-0">IELTS Essential Guide</p>
				<p class="fs-5 fw-bold mb-0" style="color: rgb(113,113,113)">Cam 18 - Test 2</p>
				<button class="btn d-flex flex-row justify-content-center w-100 h-25 mb-3 mt-4 py-2 fs-5 fw-bold color-blue--primary bg-color-blue--light">
					Tiếp tục làm bài
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="currentColor" class="bi bi-arrow-right ms-3 mt-1" viewBox="0 0 20 20">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>
			<p class="fs-3 fw-bold my-5">Hôm nay bạn muốn luyện</p>
			<ul class="ul--test nav fs-5 fw-bold justify-content-between" style="width:500px">
			  <li class="nav-item  ">
			    <a class="nav-link rounded-3 active color-blue--primary" href="#">Tất cả bộ đề</a>
			  </li>
			  <li class="nav-item ">
			    <a class="nav-link rounded-3 color-blue--primary" href="#">Bộ đề Mới nhất</a>
			  </li>
			  <li class="nav-item ">
			    <a class="nav-link rounded-3 color-blue--primary" href="#">Bộ đề HOT</a>
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
				<div class="position-relative intro d-flex flex-row">
					<img style="cursor:pointer" src="https://storage.googleapis.com/materials-elements/test-set/avatar/r3OyvbGQA2wpX7XhxP8Sw4dL3usbFra8LVI9pySn.png" width="150px"/>
					<div class="w-75 ">
						<p class="fs-4 fw-bold mb-0" style="cursor:pointer">IELTS Essential Guide</p>
						<p style="color: rgb(123,137,155); font-size: 18px; cursor:pointer">Bộ đề Cam kinh điển đầy đủ giái thích đáp án chi tiết. Luyện đề IELTS Essential Guide mới nhất với đầy đủ 4 kỹ năng, giúp thí sinh tự tin khi va chạm với mọi dạng đề.</p>
					</div>
					<div class="position-absolute end-0 px-4 rounded-3 d-flex flex-column justify-content-center" style="background-color: rgb(255,251,235); height: 40px;">
						<p class="fw-semibold h-25" style="font-size: 18px;color: rgb(246,173,48)" >1/36 đề</p>
					</div>
				</div>
				<div class="overflow-hidden my-3">
				  <div class="row gy-4">
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: #00B135; color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				   <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				  </div>
				</div>
				<button class="btn d-flex flex-row justify-content-center h-25 mt-4 mx-auto py-2 px-3 fs-5 fw-bold bg-color-blue--light color-blue--primary">
					Xem thêm 30 đề
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="currentColor" class="bi bi-arrow-right ms-3 mt-1" viewBox="0 0 20 20">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>
			<div class="w-100 bg-white px-4 py-4 my-5 rounded-4">
				<div class="position-relative intro d-flex flex-row">
					<img style="cursor:pointer" src="https://storage.googleapis.com/materials-elements/test-set/avatar/EvA1DAUR4rGj4zAC9EAs84gWeQ3tKnML8jWQfIuB.png" width="150px"/>
					<div class="w-75 ">
						<p class="fs-4 fw-bold mb-0" style="cursor:pointer">IELTS Preparation</p>
						<p style="color: rgb(123,137,155); font-size: 18px; cursor:pointer">Bộ đề IELTS được nhiều thí sinh "săn đón" trong quá trình ôn thi IELTS tại nhà. Luyện tập các đề thi IELTS Preparation để bứt phá điểm số, vượt mốc 7.0 Overall nhanh chóng.</p>
					</div>
					<div class="position-absolute end-0 px-4 rounded-3 d-flex flex-column justify-content-center" style="background-color: rgb(243,244,246); height: 40px;">
						<p class="fw-semibold h-25" style="font-size: 18px;" >0/20 đề</p>
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
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				   <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
				      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
							</svg>
				      	</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				  </div>
				</div>
				
				<button class="btn d-flex flex-row justify-content-center h-25 mt-4 mx-auto py-2 px-3 fs-5 fw-bold bg-color-blue--light color-blue--primary">
					Xem thêm 14 đề
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="currentColor" class="bi bi-arrow-right ms-3 mt-1" viewBox="0 0 20 20">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>
			<div class="w-100 bg-white px-4 py-4 my-5 rounded-4">
				<div class="position-relative intro d-flex flex-row">
					<img style="cursor:pointer" src="https://storage.googleapis.com/materials-elements/test-set/avatar/r3OyvbGQA2wpX7XhxP8Sw4dL3usbFra8LVI9pySn.png" width="150px"/>
					<div class="w-75 ">
						<p class="fs-4 fw-bold mb-0" style="cursor:pointer">IELTS Essential Guide</p>
						<p style="color: rgb(123,137,155); font-size: 18px; cursor:pointer;">Bộ đề IELTS uy tín được biên soạn bởi đơn vị tổ chức thi IELTS hàng đầu. Luyện ngay các đề thi IELTS Practice để rút ngắn thời gian trau dồi kiến thức, chạm tay vào band điểm mục tiêu chỉ trong vài tháng.</p>
					</div>
					<div class="position-absolute end-0 px-4 rounded-3 d-flex flex-column justify-content-center" style="background-color: #00B135; color: white; height:40px;">
						<p class="fw-semibold h-25" style="font-size: 18px;" >9/9 đề</p>
					</div>
				</div>
				<div class="overflow-hidden my-3">
				  <div class="row gy-4">
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: #00B135; color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: #00B135; color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: #00B135; color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: #00B135; color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: #00B135; color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				    <div class="col-6">
				      <div class="p-3 border bg-white d-flex flex-row rounded-3">
				      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: #00B135; color: white; width: 50px; height: 50px;">8.5</div>
				      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">Cam 18 - Test 1</p>
				      </div>
				    </div>
				  </div>
				</div>
				<button class="btn d-flex flex-row justify-content-center h-25 mt-4 mx-auto py-2 px-3 fs-5 fw-bold bg-color-blue--light color-blue--primary">
					Xem thêm 3 đề
					<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="currentColor" class="bi bi-arrow-right ms-3 mt-1" viewBox="0 0 20 20">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>
			<div class="position-relative w-100 border-top">
				<div class="d-flex flex-row justify-content-center mx-auto" style="width:500px">
					<button class="d-flex flex-row justify-content-center mt-4 mx-auto py-2 px-3 fs-5 fw-bold bg-color-blue--primary color-white border-0 rounded-3" style="width: 220px">
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
							fill="currentColor" class="bi bi-arrow-left me-3 mt-1" viewBox="0 0 20 20">
	  						<path fill-rule="evenodd" 
	  						d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
						</svg>
						Trang Trước
					</button>
					<button class="d-flex flex-row justify-content-center mt-4 mx-auto py-2 px-3 fs-5 fw-bold bg-color-blue--primary color-white border-0 rounded-3" style="width: 220px">
						Trang Sau
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30"
							fill="currentColor" class="bi bi-arrow-right ms-3 mt-1" viewBox="0 0 20 20">
	  						<path fill-rule="evenodd"
							d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
						</svg> 
					</button>
				</div>
				<div class="position-absolute top-0 end-0 mt-4 fs-5">
					<input type="number" class="bg-white py-2 px-2 me-2 rounded-3 text-center border-0" max="10" min="1" value="1" style="width:50px; height:50px;"/>
					của 4
					<button class="btn--2 px-2 ms-4 rounded-3 border-0" style="width:50px; height:50px;">
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-bar-left mb-1" viewBox="0 0 16 16">
	  							<path fill-rule="evenodd" d="M12.5 15a.5.5 0 0 1-.5-.5v-13a.5.5 0 0 1 1 0v13a.5.5 0 0 1-.5.5ZM10 8a.5.5 0 0 1-.5.5H3.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L3.707 7.5H9.5a.5.5 0 0 1 .5.5Z"/>
							</svg>
						</span>
					</button>
					<button class="btn--2 px-2 ms-2 rounded-3 border-0" style="width:50px; height:50px;">
						<span>
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-bar-right mb-1" viewBox="0 0 16 16">
	 							 <path fill-rule="evenodd" d="M6 8a.5.5 0 0 0 .5.5h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L12.293 7.5H6.5A.5.5 0 0 0 6 8Zm-2.5 7a.5.5 0 0 1-.5-.5v-13a.5.5 0 0 1 1 0v13a.5.5 0 0 1-.5.5Z"/>
							</svg>
						</span>
					</button>
				</div>
			</div>
			
		</div>
	</div>
	<script>
		li_List = document.querySelectorAll(".ul--test li a");
		currLi = document.querySelectorAll(".ul--test li a")[0];
		if (li_List) {
			li_List.forEach((li) => {
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