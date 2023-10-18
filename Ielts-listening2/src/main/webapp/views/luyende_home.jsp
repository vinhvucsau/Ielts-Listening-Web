<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<link
		href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
		rel="stylesheet">
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<style>
		.container {
			background-color: rgb(247, 247, 247);
		}
		
		.advertisement {
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
	</style>
	<div class="container">
		<div class="w-100 advertisement"></div>
		<div class="px-40 py-20">
			<div class="bg-white p-6 rounded-4">
				<p class="fs-4 fw-bold" style="color: rgb(0, 74, 185)">Tiếp tục
					làm bài</p>
				<p class="fs-3 fw-bold">IELTS Essential Guide</p>
				<p class="fs-4 fw-bold">Cam 18 - Test 2</p>
				<button class="btn-1 btn hover-effect d-flex flex-row justify-content-center w-100 h-25 mb-3 mt-4 p-3 fs-5 fw-bold">
					Tiếp tục làm bài
					<svg class="mx-3 my-1" xmlns="http://www.w3.org/2000/svg" width="30" height="30"
						fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 20 20">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>

		</div>
	</div>

</body>
</html>