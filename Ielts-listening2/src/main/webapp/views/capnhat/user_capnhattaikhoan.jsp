<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
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
<title>Insert title here</title>
</head>
<body>
	<div class="user_capnhat container-fluid p-0 m-0">
		<div class="d-flex flex-xxl-row justify-content-center border-bottom border-gray-300 mt-5 ">
			<a class="px-3 py-2 text--description color-blue--primary border-bottom border-primary">Tài khoản</a>
			<a href="capnhatmatkhau" class="px-3 py-2 text--description text-dark">Mật khẩu</a>
		</div>
		<div style="min-height:500px" class="my-5">
			<h3 class="text--h3 text-dark mt-5 text-center">TÀI KHOẢN</h3>
			<div class="d-flex flex-row justify-content-center mt-5">
				<div style="width:100px; height:120px">
					<svg xmlns="http://www.w3.org/2000/svg" width="100" height="86" viewBox="0 0 100 86" fill="none">
  						<path fill-rule="evenodd" clip-rule="evenodd" d="M100 50C100 63.8889 94.3371 76.4551 85.1943 85.5157C82.5677 82.1741 79.1592 79.2124 75.1113 76.7966C67.9072 72.4971 59.0804 70.1667 49.9999 70.1667C40.9194 70.1667 32.0926 72.4971 24.8885 76.7966C20.8406 79.2124 17.4321 82.174 14.8056 85.5155C5.66285 76.455 0 63.8888 0 50C0 22.3858 22.3858 0 50 0C77.6142 0 100 22.3858 100 50ZM50 65.5833C62.6565 65.5833 72.9167 55.3232 72.9167 42.6667C72.9167 30.0101 62.6565 19.75 50 19.75C37.3435 19.75 27.0833 30.0101 27.0833 42.6667C27.0833 55.3232 37.3435 65.5833 50 65.5833Z" fill="#0071F9"/>
					</svg>
					<button type="button" class="btn btn-dark float-end px-2 py-1 m-0 rounded-circle">
						<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17" fill="none">
  							<path fill-rule="evenodd" clip-rule="evenodd" d="M2.12743 3.14072C1.4165 4.16791 1.4165 5.61209 1.4165 8.50046C1.4165 11.3888 1.4165 12.833 2.12743 13.8602C2.40132 14.2559 2.74437 14.599 3.1401 14.8729C4.16729 15.5838 5.61147 15.5838 8.49984 15.5838C11.3882 15.5838 12.8324 15.5838 13.8596 14.8729C14.2553 14.599 14.5984 14.2559 14.8722 13.8602C15.5832 12.833 15.5832 11.3888 15.5832 8.50046C15.5832 6.21075 15.5832 4.82861 15.229 3.84232V12.0421C14.5487 12.0421 13.8963 11.7719 13.4152 11.2908L12.8828 10.7584C12.7571 10.6327 12.6942 10.5698 12.6372 10.5208C11.8874 9.87604 10.779 9.87604 10.0292 10.5208C9.97215 10.5698 9.9093 10.6327 9.78359 10.7584L9.78357 10.7584L9.70343 10.8385C9.5622 10.9798 9.49159 11.0504 9.4317 11.0947C8.9613 11.4425 8.29408 11.314 7.9865 10.8163C7.94735 10.753 7.90801 10.6612 7.82934 10.4776L7.82934 10.4776L7.82933 10.4776L7.7915 10.3893C7.56692 9.86531 7.45463 9.6033 7.33143 9.42964C6.712 8.55648 5.51485 8.32593 4.61544 8.90658C4.43656 9.02207 4.23499 9.22364 3.83184 9.62679L2.479 10.9796V2.70215C2.35192 2.83965 2.2344 2.98617 2.12743 3.14072Z" fill="white"/>
  							<path d="M2.4165 8.50033C2.4165 7.03472 2.41778 6.0129 2.49996 5.22644C2.5803 4.45751 2.72907 4.02847 2.9497 3.70969C3.15512 3.41289 3.41241 3.1556 3.7092 2.95019C4.02799 2.72956 4.45702 2.58079 5.22595 2.50044C6.01241 2.41827 7.03424 2.41699 8.49984 2.41699C9.96544 2.41699 10.9873 2.41827 11.7737 2.50044C12.5427 2.58079 12.9717 2.72956 13.2905 2.95019C13.5873 3.1556 13.8446 3.4129 14.05 3.70969C14.2706 4.02847 14.4194 4.45751 14.4997 5.22644C14.5819 6.0129 14.5832 7.03472 14.5832 8.50033C14.5832 9.96593 14.5819 10.9878 14.4997 11.7742C14.4194 12.5431 14.2706 12.9722 14.05 13.291C13.8446 13.5878 13.5873 13.845 13.2905 14.0505C12.9717 14.2711 12.5427 14.4199 11.7737 14.5002C10.9873 14.5824 9.96544 14.5837 8.49984 14.5837C7.03424 14.5837 6.01241 14.5824 5.22595 14.5002C4.45702 14.4199 4.02799 14.2711 3.7092 14.0505C3.41241 13.845 3.15512 13.5878 2.9497 13.291C2.72907 12.9722 2.5803 12.5431 2.49996 11.7742C2.41778 10.9878 2.4165 9.96593 2.4165 8.50033Z" stroke="white" stroke-width="2"/>
  							<ellipse cx="10.6252" cy="6.37467" rx="1.41667" ry="1.41667" fill="white"/>
						</svg>
					</button>
				</div>
			</div>
			<div class="row justify-content-center my-5">
				<div class="col-lg-6">
					<form class="row gx-3">
						<div class="col-12 mb-3">
							<lable for="inputName" class="form-lable text--h4">Họ và tên</lable>
							<input type="text" class="form-control mt-2" id="inputName" placeholder="Họ và tên">
						</div>
						<div class="col-12 mb-3">
							<lable for="inputPhone" class="form-lable text--h4">Số điện thoại</lable>
							<input type="text" class="form-control mt-2" id="inputPhone" placeholder="Số điện thoại" disabled>
						</div>
						<div class="col-12 mb-3">
							<lable for="inputEmail" class="form-lable text--h4">Email</lable>
							<input type="text" class="form-control mt-2" id="inputEmail" placeholder="Email">
						</div>
						<div class="col-12 mb-3">
							<lable for="inputAddress" class="form-lable text--h4">Địa chỉ</lable>
							<input type="text" class="form-control mt-2" id="inputAddress" placeholder="Địa chỉ">
						</div>
						<div class="row">
							<lable class="form-lable text--h4">Ngày sinh</lable>
							<div class="col-4 mb-3">
							<select id="inputDay" class="form-select mt-2">
								<option selected>Ngày</option>
								<option>1</option>
								<option>2</option>
							</select>
							</div>
							<div class="col-4 mb-3">
								<select id="inputMonth" class="form-select mt-2">
									<option selected>Tháng</option>
									<option>1</option>
									<option>2</option>
								</select>
							</div>
							<div class="col-4 mb-3">
								<select id="inputYear" class="form-select mt-2">
									<option selected>Năm</option>
									<option>2001</option>
									<option>2002</option>
								</select>
							</div>
						</div>
						<div class="col-12 mb-3">
							<lable for="inputNetworth" class="form-lable text--h4">Số dư</lable>
							<input type="text" class="form-control mt-2" id="inputNetworth" placeholder="Số dư" disabled>
						</div>
						<div class="col-6 mt-3 mb-5 pe-3">
							<button type="submit" class="btn bg-color-blue--primary text--description color-white text--description px-3 py-2 float-end">Nạp tiền</button>
						</div>
						<div class="col-6 mt-3 mb-5 ps-3">
							<button type="submit" class="btn bg-color-blue--primary text--description color-white text--description px-3 py-2">Cập nhật</button>
						</div>
					</form>
			</div>
			</div>
		</div>
			
	</div>
</body>
</html>