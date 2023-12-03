<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<main>
	<section class="pt-5 pb-5">
		<div class="container">
			<!-- User info -->
			<div class="row align-items-center">
				<div class="col-xl-12 col-lg-12 col-md-12 col-12">
					<!-- Bg -->
					<div class="rounded-top"
						style="background: url(../assets/images/background/profile-bg.jpg) no-repeat; background-size: cover; height: 100px"></div>
					<div
						class="card px-4 pt-2 pb-4 shadow-sm rounded-top-0 rounded-bottom-0 rounded-bottom-md-2">
						<div class="d-flex align-items-end justify-content-between">
							<div class="d-flex align-items-center">
								<div
									class="me-2 position-relative d-flex justify-content-end align-items-end mt-n5">
									<img src="../assets/images/avatar/avatar-3.jpg"
										class="avatar-xl rounded-circle border border-4 border-white"
										alt="avatar" />
								</div>
								<div class="lh-1">
									<h2 class="mb-0" name="userId" value ="${user.userId}"> ${user.userId }
										Stella Flores <a href="#" class="" data-bs-toggle="tooltip"
											data-placement="top" title="Beginner"> <svg width="16"
												height="16" viewBox="0 0 16 16" fill="none"
												xmlns="http://www.w3.org/2000/svg">
                                                        <rect x="3"
													y="8" width="2" height="6" rx="1" fill="#754FFE"></rect>
                                                        <rect x="7"
													y="5" width="2" height="9" rx="1" fill="#DBD8E9"></rect>
                                                        <rect x="11"
													y="2" width="2" height="12" rx="1" fill="#DBD8E9"></rect>
                                                    </svg>
										</a>
									</h2>
									<p class="mb-0 d-block">@stellaflores</p>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>

			<div class="row mt-0 mt-md-4">
				
					<div class="col-lg-3 col-md-4 col-12">
						<!-- Side navbar -->
						<nav
							class="navbar navbar-expand-md shadow-sm mb-4 mb-lg-0 sidenav">
							<!-- Menu -->
							<a class="d-xl-none d-lg-none d-md-none text-inherit fw-bold"
								href="#">Menu</a>
							<!-- Button -->
							<button
								class="navbar-toggler d-md-none icon-shape icon-sm rounded bg-primary text-light"
								type="button" data-bs-toggle="collapse"
								data-bs-target="#sidenav" aria-controls="sidenav"
								aria-expanded="false" aria-label="Toggle navigation">
								<span class="fe fe-menu"></span>
							</button>
							<!-- Collapse navbar -->
							<div class="collapse navbar-collapse" id="sidenav">
								<div class="navbar-nav flex-column">
									<span class="navbar-header">Subscription</span>
									<!-- List -->
									<ul class="list-unstyled ms-n2 mb-4">
										<!-- Nav item -->
										<li class="nav-item"><a class="nav-link"
											href="student-subscriptions.html"> <i
												class="fe fe-calendar nav-icon"></i> My Course
										</a></li>
										<!-- Nav item -->
										<li class="nav-item"><a class="nav-link"
											href="student-subscriptions.html"> <i
												class="fe fe-calendar nav-icon"></i> My Score
										</a></li>

										<!-- Nav item -->
										<li class="nav-item"><a class="nav-link"
											href="invoice.html"> <i class="fe fe-clipboard nav-icon"></i>
												Invoice
										</a></li>

									</ul>
									<span class="navbar-header">Account Settings</span>
									<!-- List -->
									<ul class="list-unstyled ms-n2 mb-0">
										<!-- Nav item -->
										<li class="nav-item active"><a class="nav-link"
											href="profile-edit.html"> <i
												class="fe fe-settings nav-icon"></i> Edit Profile
										</a></li>
										<!-- Nav item -->
										<li class="nav-item"><a class="nav-link"
											href="security.html"> <i class="fe fe-user nav-icon"></i>
												Security
										</a></li>

										<li class="nav-item"><a class="nav-link"
											href="notifications.html"> <i class="fe fe-bell nav-icon"></i>
												Notifications
										</a></li>

										<!-- Nav item -->
										<li class="nav-item"><a class="nav-link"
											href="../index.html"> <i class="fe fe-power nav-icon"></i>
												Sign Out
										</a></li>
									</ul>
								</div>
							</div>
						</nav>
					</div>

					<div class="col-lg-9 col-md-8 col-12">
						<!-- Card -->
						
						<div class="card">
							<!-- Card header -->
							<div class="card-header">
								<h3 class="mb-0">Profile Details</h3>
								<p class="mb-0">You have full control to manage your own
									account setting.</p>
							</div>
							<!-- Card body -->
							<form action="capnhattaikhoan?userId=${user.userId}"  method="post" 
					enctype="multipart/form-data" >
					<input name="userId" value ="${user.userId}" class="hide" style="display:none">
							<div class="card-body">
								<div
									class="d-lg-flex align-items-center justify-content-between">
									<div class="d-flex align-items-center mb-4 mb-lg-0">
										<div style="width: 100px">
											<c:if test="${currentUser.image != null}">
												<img class="rounded-circle"
													style="width: 100px; height: 100px;"
													src='<c:url value='/image?fname=userAvatar/${ currentUser.image}'/>'
													alt="anh dai dien">
											</c:if>
											<c:if test="${currentUser.image == null}">
												<img class="rounded-circle"
													style="width: 100px; height: 100px;"
													src='<c:url value = "https://res.cloudinary.com/dh6bfx865/image/upload/v1698335051/cuahangdientu/default_avatar.png"/>'
													alt="anh dai dien">
											</c:if>
											<!-- <button type="button" class="btn btn-dark float-end px-2 py-1 m-0 rounded-circle">
						<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17" fill="none">
  							<path fill-rule="evenodd" clip-rule="evenodd" d="M2.12743 3.14072C1.4165 4.16791 1.4165 5.61209 1.4165 8.50046C1.4165 11.3888 1.4165 12.833 2.12743 13.8602C2.40132 14.2559 2.74437 14.599 3.1401 14.8729C4.16729 15.5838 5.61147 15.5838 8.49984 15.5838C11.3882 15.5838 12.8324 15.5838 13.8596 14.8729C14.2553 14.599 14.5984 14.2559 14.8722 13.8602C15.5832 12.833 15.5832 11.3888 15.5832 8.50046C15.5832 6.21075 15.5832 4.82861 15.229 3.84232V12.0421C14.5487 12.0421 13.8963 11.7719 13.4152 11.2908L12.8828 10.7584C12.7571 10.6327 12.6942 10.5698 12.6372 10.5208C11.8874 9.87604 10.779 9.87604 10.0292 10.5208C9.97215 10.5698 9.9093 10.6327 9.78359 10.7584L9.78357 10.7584L9.70343 10.8385C9.5622 10.9798 9.49159 11.0504 9.4317 11.0947C8.9613 11.4425 8.29408 11.314 7.9865 10.8163C7.94735 10.753 7.90801 10.6612 7.82934 10.4776L7.82934 10.4776L7.82933 10.4776L7.7915 10.3893C7.56692 9.86531 7.45463 9.6033 7.33143 9.42964C6.712 8.55648 5.51485 8.32593 4.61544 8.90658C4.43656 9.02207 4.23499 9.22364 3.83184 9.62679L2.479 10.9796V2.70215C2.35192 2.83965 2.2344 2.98617 2.12743 3.14072Z" fill="white"/>
  							<path d="M2.4165 8.50033C2.4165 7.03472 2.41778 6.0129 2.49996 5.22644C2.5803 4.45751 2.72907 4.02847 2.9497 3.70969C3.15512 3.41289 3.41241 3.1556 3.7092 2.95019C4.02799 2.72956 4.45702 2.58079 5.22595 2.50044C6.01241 2.41827 7.03424 2.41699 8.49984 2.41699C9.96544 2.41699 10.9873 2.41827 11.7737 2.50044C12.5427 2.58079 12.9717 2.72956 13.2905 2.95019C13.5873 3.1556 13.8446 3.4129 14.05 3.70969C14.2706 4.02847 14.4194 4.45751 14.4997 5.22644C14.5819 6.0129 14.5832 7.03472 14.5832 8.50033C14.5832 9.96593 14.5819 10.9878 14.4997 11.7742C14.4194 12.5431 14.2706 12.9722 14.05 13.291C13.8446 13.5878 13.5873 13.845 13.2905 14.0505C12.9717 14.2711 12.5427 14.4199 11.7737 14.5002C10.9873 14.5824 9.96544 14.5837 8.49984 14.5837C7.03424 14.5837 6.01241 14.5824 5.22595 14.5002C4.45702 14.4199 4.02799 14.2711 3.7092 14.0505C3.41241 13.845 3.15512 13.5878 2.9497 13.291C2.72907 12.9722 2.5803 12.5431 2.49996 11.7742C2.41778 10.9878 2.4165 9.96593 2.4165 8.50033Z" stroke="white" stroke-width="2"/>
  							<ellipse cx="10.6252" cy="6.37467" rx="1.41667" ry="1.41667" fill="white"/>
						</svg>
					</button> -->
										</div>

										<div class="ms-3">
											<h4 class="mb-0">Your avatar</h4>
											<p class="mb-0">PNG or JPG no bigger than 800px wide and
												tall.</p>
										</div>
									</div>
									<div>
										<input type="file" class="form-control" value="Input"
											name="inputImage" id="inputimage"
											accept="image/jpeg, image/png" >

									</div>
								</div>
								<hr class="my-5" />
								<div>
									<h4 class="mb-0">Personal Details</h4>
									<p class="mb-4">Edit your personal information and address.</p>
									<!-- Form -->
									<div class="row gx-3 " >
									
									
									
									
										<!--  name -->
										<div class="mb-3 col-12 col-md-6">
											<label class="form-label" for="fname">Họ và tên</label> <input
												type="text" class="form-control " id="inputname"
												name="inputName" placeholder="Họ và tên"
												value="${ currentUser.name}">
											<div class="invalid-feedback">Hãy điền tên vào</div>
										</div>
										<!-- Email-->
										<div class="mb-3 col-12 col-md-6">
											<label class="form-label" for="Email">Email</label> <input
												type="text" class="form-control " id="inputemail"
												name="inputEmail" placeholder="Email"
												value="${ currentUser.email}" required>
											<div class="invalid-feedback">Hãy điền Email.</div>
										</div>

										<!-- Phone -->
										<div class="mb-3 col-12 col-md-6">
											<label class="form-label" for="phone">Phone</label> <input
												type="text" class="form-control" id="inputphone"
												name="inputPhone" placeholder="Số điện thoại"
												value="${ currentUser.phoneNumber}" required />

											<div class="invalid-feedback">Hãy điền số điện thoại.</div>
										</div>
										<!-- Birthday -->
										<div class="mb-3 col-12 col-md-6">
											<label class="form-label" for="birth">Birthday</label> <input
												class="form-control flatpickr" type="text"
												placeholder="Ngày sinh" id="datepicker" name="datePicker"
												data-mdb-toggle="datepicker"
												value="${ currentUser.dateOfBirth}" />
											<div class="invalid-feedback">Hãy chọn ngày.</div>
										</div>
										<!-- Address -->
										<div class="mb-3 col-12 col-md-12">
											<label class="form-label" for="address">Địa chỉ</label> <input
												type="text" class="form-control" id="inputaddress"
												name="inputAddress" placeholder="Địa chỉ"
												value="${ currentUser.address}" required />
											<div class="invalid-feedback">Hãy điền địa chỉ .</div>
										</div>
										<!-- Address -->
										<div class="mb-3 col-12 col-md-12">
											<label class="form-label" for="address">ví</label> <input
												type="text" class="form-control " id="inputnetworth"
												name="inputNetworth" placeholder="Số dư"
												value="${ currentUser.networth}" disabled>

										</div>
										<!-- Button -->
										<div class="mb-3 col-12 col-md-6">
											<button type="button"
												class="btn btn-primary text--description color-white text--description px-3 py-2 float-end"
												data-bs-toggle="modal" data-bs-target="#exampleModal">Nạp
												tiền</button>
										</div>
										<div class="mb-3 col-12 col-md-6">
											<button type="submit" name="action"
												class="btn btn-primary text--description color-white text--description px-3 py-2">Cập
												nhật</button>
										</div>
										
										<div class="modal fade" id="exampleModal" tabindex="-1"
											aria-labelledby="exampleModalLabel" aria-hidden="true">
											<div class="modal-dialog modal-dialog-centered">
												<div class="modal-content">
													<div
														class="modal-header bg-color-blue--primary color-white align-items-center">
														<h1 class="modal-title fs-5 text--title ps-2"
															id="exampleModalLabel">Nạp tiền</h1>
														<button type="button" class="btn" data-bs-dismiss="modal">
															<svg xmlns="http://www.w3.org/2000/svg" width="24"
																height="24" viewBox="0 0 24 24" fill="none">
  										<path d="M18 6L6 18" stroke="white" stroke-width="2"
																	stroke-linecap="square" stroke-linejoin="round" />
  										<path d="M6 6L18 18" stroke="white" stroke-width="2"
																	stroke-linecap="square" stroke-linejoin="round" />
									</svg>
														</button>
													</div>
													<div class="modal-body">
														<div class="col-12 mb-3 px-2">
															<lable for="inputName" class="form-lable text--h4">Số
															tiền cần nạp</lable>
															<input type="text" class="form-control shadow-none mt-2"
																id="inputnetworth" name="inputNetworth"
																placeholder="Số tiền">
														</div>
														<div class="d-flex flex-column align-items-center">
															<div class="px-2">
																<div class="card mb-3"
																	style="height: 250px; width: 250px">
																	<img
																		src='<c:url value = "https://www.qr-code-generator.com/wp-content/themes/qr/images/banners/frames/websiteQRCode_noFrame.png"></c:url>' />
																</div>
															</div>
															<p class="text--description m-0">Quét mã QR để nạp
																tiền</p>
														</div>
													</div>
													<div class="modal-footer justify-content-center">
														<button type="submit"
															class="btn text--description color-white bg-color-blue--primary">Hoàn
															tất</button>
													</div>
												</div>
											</div>
										</div>
										</div>
										
								</div>
</form>
							</div>
						</div>

					</div>
				
			</div>

		</div>
	</section>
	</main>
	<div class="user_capnhat container-fluid p-0 m-0">
		<div
			class="d-flex flex-xxl-row justify-content-center border-bottom border-gray-300 mt-5 ">
			<a
				class="px-3 py-2 text--description text-primary border-bottom border-primary">Tài
				khoản</a> <a href="capnhatmatkhau"
				class="px-3 py-2 text--description text-dark">Mật khẩu</a>
		</div>
		<div style="min-height: 500px" class="my-5">
			<h3 class="text--h3 text-dark mt-5 text-center">TÀI KHOẢN</h3>
			<div class="d-flex flex-row justify-content-center mt-5">
				<div style="width: 100px">
					<c:if test="${currentUser.image != null}">
						<img class="rounded-circle" style="width: 100px; height: 100px;"
							src='<c:url value='/image?fname=userAvatar/${ currentUser.image}'/>'
							alt="anh dai dien">
					</c:if>
					<c:if test="${currentUser.image == null}">
						<img class="rounded-circle" style="width: 100px; height: 100px;"
							src='<c:url value = "https://res.cloudinary.com/dh6bfx865/image/upload/v1698335051/cuahangdientu/default_avatar.png"/>'
							alt="anh dai dien">
					</c:if>
					<!-- <button type="button" class="btn btn-dark float-end px-2 py-1 m-0 rounded-circle">
						<svg xmlns="http://www.w3.org/2000/svg" width="17" height="17" viewBox="0 0 17 17" fill="none">
  							<path fill-rule="evenodd" clip-rule="evenodd" d="M2.12743 3.14072C1.4165 4.16791 1.4165 5.61209 1.4165 8.50046C1.4165 11.3888 1.4165 12.833 2.12743 13.8602C2.40132 14.2559 2.74437 14.599 3.1401 14.8729C4.16729 15.5838 5.61147 15.5838 8.49984 15.5838C11.3882 15.5838 12.8324 15.5838 13.8596 14.8729C14.2553 14.599 14.5984 14.2559 14.8722 13.8602C15.5832 12.833 15.5832 11.3888 15.5832 8.50046C15.5832 6.21075 15.5832 4.82861 15.229 3.84232V12.0421C14.5487 12.0421 13.8963 11.7719 13.4152 11.2908L12.8828 10.7584C12.7571 10.6327 12.6942 10.5698 12.6372 10.5208C11.8874 9.87604 10.779 9.87604 10.0292 10.5208C9.97215 10.5698 9.9093 10.6327 9.78359 10.7584L9.78357 10.7584L9.70343 10.8385C9.5622 10.9798 9.49159 11.0504 9.4317 11.0947C8.9613 11.4425 8.29408 11.314 7.9865 10.8163C7.94735 10.753 7.90801 10.6612 7.82934 10.4776L7.82934 10.4776L7.82933 10.4776L7.7915 10.3893C7.56692 9.86531 7.45463 9.6033 7.33143 9.42964C6.712 8.55648 5.51485 8.32593 4.61544 8.90658C4.43656 9.02207 4.23499 9.22364 3.83184 9.62679L2.479 10.9796V2.70215C2.35192 2.83965 2.2344 2.98617 2.12743 3.14072Z" fill="white"/>
  							<path d="M2.4165 8.50033C2.4165 7.03472 2.41778 6.0129 2.49996 5.22644C2.5803 4.45751 2.72907 4.02847 2.9497 3.70969C3.15512 3.41289 3.41241 3.1556 3.7092 2.95019C4.02799 2.72956 4.45702 2.58079 5.22595 2.50044C6.01241 2.41827 7.03424 2.41699 8.49984 2.41699C9.96544 2.41699 10.9873 2.41827 11.7737 2.50044C12.5427 2.58079 12.9717 2.72956 13.2905 2.95019C13.5873 3.1556 13.8446 3.4129 14.05 3.70969C14.2706 4.02847 14.4194 4.45751 14.4997 5.22644C14.5819 6.0129 14.5832 7.03472 14.5832 8.50033C14.5832 9.96593 14.5819 10.9878 14.4997 11.7742C14.4194 12.5431 14.2706 12.9722 14.05 13.291C13.8446 13.5878 13.5873 13.845 13.2905 14.0505C12.9717 14.2711 12.5427 14.4199 11.7737 14.5002C10.9873 14.5824 9.96544 14.5837 8.49984 14.5837C7.03424 14.5837 6.01241 14.5824 5.22595 14.5002C4.45702 14.4199 4.02799 14.2711 3.7092 14.0505C3.41241 13.845 3.15512 13.5878 2.9497 13.291C2.72907 12.9722 2.5803 12.5431 2.49996 11.7742C2.41778 10.9878 2.4165 9.96593 2.4165 8.50033Z" stroke="white" stroke-width="2"/>
  							<ellipse cx="10.6252" cy="6.37467" rx="1.41667" ry="1.41667" fill="white"/>
						</svg>
					</button> -->
				</div>
			</div>
			<div class="row justify-content-center my-5">
				<div class="col-lg-6">
					<form action="capnhattaikhoan" class="row gx-3" method="post"
						enctype="multipart/form-data">
						<div class="col-12 mb-3">
							<lable for="inputimage" class="form-lable text--h4">Ảnh
							đại diện</lable>
							<input type="file" name="inputImage" id="inputimage"
								accept="image/jpeg, image/png">
						</div>
						<div class="col-12 mb-3">
							<lable for="inputname" class="form-lable text--h4">Họ và
							tên</lable>
							<input type="text" class="form-control shadow-none mt-2"
								id="inputname" name="inputName" placeholder="Họ và tên"
								value="${ currentUser.name}">
						</div>
						<div class="col-12 mb-3">
							<lable for="inputphone" class="form-lable text--h4">Số
							điện thoại</lable>
							<input type="text" class="form-control shadow-none mt-2"
								id="inputphone" name="inputPhone" placeholder="Số điện thoại"
								value="${ currentUser.phoneNumber}">
						</div>
						<div class="col-12 mb-3">
							<lable for="inputemail" class="form-lable text--h4">Email</lable>
							<input type="text" class="form-control shadow-none mt-2"
								id="inputemail" name="inputEmail" placeholder="Email"
								value="${ currentUser.email}">
						</div>
						<div class="col-12 mb-3">
							<lable for="inputaddress" class="form-lable text--h4">Địa
							chỉ</lable>
							<input type="text" class="form-control shadow-none mt-2"
								id="inputaddress" name="inputAddress" placeholder="Địa chỉ"
								value="${ currentUser.address}">
						</div>
						<div class="col-12 mb-3">
							<lable class="form-lable text--h4">Ngày sinh</lable>
							<div class="form-outline datepicker"
								data-mdb-toggle-button="false">
								<input type="date" class="form-control shadow-none mt-2"
									id="datepicker" name="datePicker" data-mdb-toggle="datepicker"
									value="${ currentUser.dateOfBirth}" />
							</div>
						</div>
						<div class="col-12 mb-3">
							<lable for="inputnetworth" class="form-lable text--h4">Số
							dư</lable>
							<input type="text" class="form-control shadow-none mt-2"
								id="inputnetworth" name="inputNetworth" placeholder="Số dư"
								value="${ currentUser.networth}" disabled>
						</div>
						<div class="col-6 mt-3 mb-5 pe-3">
							<button type="button"
								class="btn bg-color-blue--primary text--description color-white text--description px-3 py-2 float-end"
								data-bs-toggle="modal" data-bs-target="#exampleModal">Nạp
								tiền</button>
						</div>
						<div class="col-6 mt-3 mb-5 ps-3">
							<button type="submit" name="action"
								class="btn bg-color-blue--primary text--description color-white text--description px-3 py-2">Cập
								nhật</button>
						</div>

					</form>
				</div>
			</div>
		</div>
	
	</div>
</body>
</html>