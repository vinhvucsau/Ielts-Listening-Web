<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>

    <link rel="stylesheet" href="../assets/libs/glightbox/dist/css/glightbox.min.css">
        <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="Codescandy" />

    <!-- Favicon icon-->
    <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon/favicon.ico" />

    <!-- darkmode js -->
    <script src="../assets/js/vendors/darkMode.js"></script>

    <!-- Libs CSS -->
    <link href="../assets/fonts/feather/feather.css" rel="stylesheet" />
    <link href="../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet" />
    <link href="../assets/libs/simplebar/dist/simplebar.min.css" rel="stylesheet" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="../assets/css/theme.min.css">

        <link rel="canonical" href="course-single.html">
    <title>Bài học</title>
    

    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
	
	<script>
		var arrTopic = [];
		var arrMock = [];
		var id = "Less: ${lesson.lessonId}";
		// Duyệt danh sách Java và thêm dữ liệu vào biến JavaScript
		<c:forEach var="item" items="${listCmt}">
			var item = {
					lessons : "${item.lessons.lessonId}"
			};
			arrTopic.push(item);
		</c:forEach>
		for(var t of arrTopic){
			if("${lesson.lessonId}" ==t.lessons ){
				console.log(t.lessons);
			}
			console.log("fail");
		}
		
		
		console.log(id);
	</script>

	
	
    <!-- Video section -->
    <main>
        <section class="p-lg-5 py-7">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-12 mb-5">
                        <div class="rounded-3 position-relative w-100 d-block overflow-hidden p-0" style="height: 600px">
                            <iframe
                                class="position-absolute top-0 end-0 start-0 end-0 bottom-0 h-100 w-100"
                                width="560"
                                height="315"
                                src="https://www.youtube.com/embed/Nfzi7034Kbg?si=C2_CU7iIZJA5VWcS"
                                title="Geeks - Academy and LMS Template"
                                frameborder="0"></iframe>
                        </div>
                    </div>
                </div>
                <!-- Content -->
                <div class="row">
                    <div class="col-xl-12 col-lg-12 col-md-12 col-12 mb-4 mb-xl-0">
                        <!-- Card -->
                        <div class="card mb-5">
                            <!-- Card body -->
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h1 class="fw-semibold mb-2">${lesson.lessonId}</h1>
                                    
                                </div>
                                <div class="d-flex mb-5 lh-1">
                                    <span class="fs-6 align-top me-1">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-star-fill text-warning" viewBox="0 0 16 16">
                                            <path
                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                                        </svg>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-star-fill text-warning" viewBox="0 0 16 16">
                                            <path
                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                                        </svg>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-star-fill text-warning" viewBox="0 0 16 16">
                                            <path
                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                                        </svg>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-star-fill text-warning" viewBox="0 0 16 16">
                                            <path
                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"></path>
                                        </svg>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor" class="bi bi-star-half text-warning" viewBox="0 0 16 16">
                                            <path
                                                d="M5.354 5.119 7.538.792A.516.516 0 0 1 8 .5c.183 0 .366.097.465.292l2.184 4.327 4.898.696A.537.537 0 0 1 16 6.32a.548.548 0 0 1-.17.445l-3.523 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256a.52.52 0 0 1-.146.05c-.342.06-.668-.254-.6-.642l.83-4.73L.173 6.765a.55.55 0 0 1-.172-.403.58.58 0 0 1 .085-.302.513.513 0 0 1 .37-.245l4.898-.696zM8 12.027a.5.5 0 0 1 .232.056l3.686 1.894-.694-3.957a.565.565 0 0 1 .162-.505l2.907-2.77-4.052-.576a.525.525 0 0 1-.393-.288L8.001 2.223 8 2.226v9.8z">
                                        </svg>
                                    </span>
                                    <span class="fw-medium">(140)</span>

                                    <span class="ms-4 d-none d-md-block">
                                        <svg width="16" height="16" viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                            <rect x="3" y="8" width="2" height="6" rx="1" fill="#754FFE"></rect>
                                            <rect x="7" y="5" width="2" height="9" rx="1" fill="#754FFE"></rect>
                                            <rect x="11" y="2" width="2" height="12" rx="1" fill="#DBD8E9"></rect>
                                        </svg>
                                        <span>Cơ bản</span>
                                    </span>
                                    <span class="ms-4 d-none d-md-block">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-people" viewBox="0 0 16 16">
                                            <path
                                                d="M15 14s1 0 1-1-1-4-5-4-5 3-5 4 1 1 1 1h8Zm-7.978-1A.261.261 0 0 1 7 12.996c.001-.264.167-1.03.76-1.72C8.312 10.629 9.282 10 11 10c1.717 0 2.687.63 3.24 1.276.593.69.758 1.457.76 1.72l-.008.002a.274.274 0 0 1-.014.002H7.022ZM11 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4Zm3-2a3 3 0 1 1-6 0 3 3 0 0 1 6 0ZM6.936 9.28a5.88 5.88 0 0 0-1.23-.247A7.35 7.35 0 0 0 5 9c-4 0-5 3-5 4 0 .667.333 1 1 1h4.216A2.238 2.238 0 0 1 5 13c0-1.01.377-2.042 1.09-2.904.243-.294.526-.569.846-.816ZM4.92 10A5.493 5.493 0 0 0 4 13H1c0-.26.164-1.03.76-1.724.545-.636 1.492-1.256 3.16-1.275ZM1.5 5.5a3 3 0 1 1 6 0 3 3 0 0 1-6 0Zm3-2a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z">
                                        </svg>
                                        <span>100 người đăng ký</span>
                                    </span>
                                </div>
                            </div>
                            <!-- Nav tabs -->
                            <ul class="nav nav-lt-tab" id="tab" role="tablist">
                                <!-- Nav item -->
                                <li class="nav-item">
                                    <a class="nav-link active" id="description-tab" data-bs-toggle="pill" href="#description" role="tab" aria-controls="description" aria-selected="false">
                                        Bài tập
                                    </a>
                                </li>
                                <!-- Nav item -->
                                <li class="nav-item">
                                    <a class="nav-link" id="review-tab" data-bs-toggle="pill" href="#review" role="tab" aria-controls="review" aria-selected="false">Đánh giá</a>
                                </li>
                                <!-- Nav item -->
                                <li class="nav-item d-none">
                                    <a class="nav-link" id="transcript-tab" data-bs-toggle="pill" href="#transcript" role="tab" aria-controls="transcript" aria-selected="false">Transcript</a>
                                </li>
                                <!-- Nav item -->
                                <li class="nav-item d-none">
                                    <a class="nav-link" id="faq-tab" data-bs-toggle="pill" href="#faq" role="tab" aria-controls="faq" aria-selected="false">FAQ</a>
                                </li>
                            </ul>
                        </div>
                        <!-- Card -->
                        <div class="container card rounded-3">
                            <div class="row">
                                <!-- Card body -->
                                <div class="card-body col-xl-12">
                                        <div class="tab-content" id="tabContent">
                                            <!-- Tab pane -->
                                            <div class="tab-pane fade show active" id="description" role="tabpanel" aria-labelledby="description-tab">
                                                <div class="row">
                                                    <div class="col-xl-8">
                                                        <div class="mb-4">
                                                            <h3 class="mb-2">Bài tập</h3>
                                                            <span>${lesson.answerSheet}</span>
                                                        </div>

                                                    </div>
                                                    <!-- resolv -->
                                                    <div class="col-xl-4 col-lg-12 col-md-12 col-12">
                                                        <div class="card" id="courseAccordion">
                                                            <div>
                                                                <h3 class="ms-3">Đáp án</h3>
                                                                <!-- List group -->
                                                                <form action="" method="post" class="form-answer">
                                                                    <ul class="list-answer list-group list-group-flush">
                                                                         <!-- List group item -->
                                                                         <li class="answer-item list-group-item border-0">
                                                                            <div class="mb-3 col-12 col-md-12 d-flex justify-content-between align-items-center">
                                                                                <h4 class="form-label me-3 m-0" for="phone" style="width: 80px;">Câu 01: </h4>
                                                                                
                                                                                <input type="text" id="phone" class="answer-item__text form-control" placeholder="Nhập đáp án" required="">
                                                                            </div>
                                                                        </li>
                                                                        <li class="answer-item list-group-item border-0">
                                                                            <div class="mb-3 col-12 col-md-12 d-flex justify-content-between align-items-center">
                                                                                <h4 class="form-label me-3 m-0" for="phone" style="width: 80px;">Câu 01: </h4>
                                                                                
                                                                                <input type="text" id="phone" class="answer-item__text form-control" placeholder="Nhập đáp án" required="">
                                                                            </div>
                                                                        </li>
                                                                        <li class="answer-item list-group-item border-0">
                                                                            <div class="mb-3 col-12 col-md-12 d-flex justify-content-between align-items-center">
                                                                                <h4 class="form-label me-3 m-0" for="phone" style="width: 80px;">Câu 01: </h4>
                                                                                
                                                                                <input type="text" id="phone" class="answer-item__text form-control" placeholder="Nhập đáp án" required="">
                                                                            </div>
                                                                        </li>
                                                                        <li class="answer-item list-group-item border-0">
                                                                            <div class="mb-3 col-12 col-md-12 d-flex justify-content-between align-items-center">
                                                                                <h4 class="form-label me-3 m-0" for="phone" style="width: 80px;">Câu 01: </h4>
                                                                                
                                                                                <input type="text" id="phone" class="answer-item__text form-control" placeholder="Nhập đáp án" required="">
                                                                            </div>
                                                                        </li>
                                                                        <!-- submit -->
                                                                        <button type="submit" class="btn btn-primary">Nộp bài</button>
                                                                    </ul>
                                                                </form>
                                                        </div>
                                                    </div>
                                                </div>


                                            </div>
                                            
                                        </div>


                                        <!-- review -->
                                        <div class="tab-pane fade" id="review" role="tabpanel" aria-labelledby="review-tab">
                                            <div class="review-rate mb-3">
                                                <h3 class="mb-4">Đánh giá của học viên</h3>
                                                <div class="row align-items-center">
                                                    <div class="col-auto text-center">
                                                        <h3 class="display-2 fw-bold">4.5</h3>
                                                        <span class="fs-6">
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                                                fill="currentColor" class="bi bi-star-fill text-warning"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                            </svg>
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                                                fill="currentColor" class="bi bi-star-fill text-warning"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                            </svg>
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                                                fill="currentColor" class="bi bi-star-fill text-warning"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                            </svg>
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                                                fill="currentColor" class="bi bi-star-fill text-warning"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                            </svg>
                                                            <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
                                                                fill="currentColor" class="bi bi-star-fill text-warning"
                                                                viewBox="0 0 16 16">
                                                                <path
                                                                    d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                            </svg>
                                                        </span>
                                                        <p class="mb-0 fs-6">(Dựa trên 100 đánh giá)</p>
                                                    </div>
                                                    <!-- Progress Bar -->
                                                    <div class="col order-3 order-md-2">
                                                        <div class="progress mb-3" style="height: 6px">
                                                            <div class="progress-bar bg-warning" role="progressbar"
                                                                style="width: 90%" aria-valuenow="90" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                        </div>
                                                        <div class="progress mb-3" style="height: 6px">
                                                            <div class="progress-bar bg-warning" role="progressbar"
                                                                style="width: 80%" aria-valuenow="80" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                        </div>
                                                        <div class="progress mb-3" style="height: 6px">
                                                            <div class="progress-bar bg-warning" role="progressbar"
                                                                style="width: 70%" aria-valuenow="70" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                        </div>
                                                        <div class="progress mb-3" style="height: 6px">
                                                            <div class="progress-bar bg-warning" role="progressbar"
                                                                style="width: 60%" aria-valuenow="60" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                        </div>
                                                        <div class="progress mb-0" style="height: 6px">
                                                            <div class="progress-bar bg-warning" role="progressbar"
                                                                style="width: 50%" aria-valuenow="50" aria-valuemin="0"
                                                                aria-valuemax="100"></div>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-auto col-6 order-2 order-md-3">
                                                        <!-- Rating -->
                                                        <div>
                                                            <span class="fs-6">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                            </span>
                                                            <span class="ms-1">53%</span>
                                                        </div>
                                                        <div>
                                                            <span class="fs-6">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                            </span>
                                                            <span class="ms-1">36%</span>
                                                        </div>
                                                        <div>
                                                            <span class="fs-6">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                            </span>
                                                            <span class="ms-1">9%</span>
                                                        </div>
                                                        <div>
                                                            <span class="fs-6">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                            </span>
                                                            <span class="ms-1">3%</span>
                                                        </div>
                                                        <div>
                                                            <span class="fs-6">
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-warning"
                                                                    viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                                <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                    height="12" fill="currentColor"
                                                                    class="bi bi-star-fill text-light" viewBox="0 0 16 16">
                                                                    <path
                                                                        d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                </svg>
                                                            </span>
                                                            <span class="ms-1">2%</span>
                                                        </div>
                                                    </div>

                                                    <!-- rate -->
                                                    <form action="rate" method="post" class="star-rating order-3" id="Rate">
                                                        <h1 class="color-black">Đánh giá của bạn</h1>
                                                        <div class="star-list d-flex flex-row-reverse justify-content-center align-items-center">
                                                            <input class="radio-input" type="radio" id="star5" name="star-input" value="5" />
                                                            <label class="radio-label" class for="star5" title="5 stars">5 stars</label>
        
                                                            <input class="radio-input" type="radio" id="star4" name="star-input" value="4" />
                                                            <label class="radio-label" for="star4" title="4 stars">4 stars</label>
        
                                                            <input class="radio-input" type="radio" id="star3" name="star-input" value="3" />
                                                            <label class="radio-label" for="star3" title="3 stars">3 stars</label>
        
                                                            <input class="radio-input" type="radio" id="star2" name="star-input" value="2" />
                                                            <label class="radio-label" for="star2" title="2 stars">2 stars</label>
        
                                                            <input class="radio-input" type="radio" id="star1" name="star-input" value="1" />
                                                            <label class="radio-label" for="star1" title="1 star">1 star</label> 
                                                            
                                                            <!-- get result value here ! -->    
                                                            
                                                            <input type="text" name="result-rating" id="result-rating" value="0" class="d-none">

                                                        </div>
                                                        <button type="submit" class="btn btn-primary mt-2">Đánh giá</button>
                                                        
                                                    </form>

                                                    <p class="order-4 text-center mt-4">Xin cảm ơn những đóng góp của bạn !</p>
                                                </div>
                                            </div>
                                            <hr class="my-5">
                                            <div class="mb-3">
                                                <div class="d-lg-flex align-items-center justify-content-between mb-5">
                                                    <!--  -->
                                                    <div class="mb-3 mb-lg-0">
                                                        <h3 class="mb-0">Bình luận</h3>
                                                    </div>
                                                    <div>
                                                        <form class="form-inline">
                                                            <div class="d-flex align-items-center me-2">
                                                                <span class="position-absolute ps-3">
                                                                    <i class="fe fe-search"></i>
                                                                </span>
                                                                <input type="search" class="form-control ps-6"
                                                                    placeholder="Tìm kiếm">
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                               
                                            </div>

                                            <!-- rep comment -->
                        
                                            <c:forEach var="cmt" items="${listCmt}">
                                            	<c:choose>
                                            	<c:when test="${cmt.lessons.lessonId == lesson.lessonId }">
                                                    <div class="comment-thread">
                                                        <!-- Comment 1 start -->
                                                        <details open class="comment" id="comment-1">
                                                            <a href="#comment-1" class="comment-border-link d-none">
                                                                <span class="sr-only">Jump to comment-1</span>
                                                            </a>
                                                            <summary class="">
                                                                <div class="comment-heading">
                                                                    
                                                                    <div class="comment-info">
                                                                        <div class="rating-item d-flex align-items-start">
                                                                            <img src="../assets/images/avatar/avatar-2.jpg" alt=""
                                                                                class="rounded-circle avatar-lg">
                                                                            <div class="ms-3">
                                                                                <c:forEach  var="uCmt" items="${listUser}">
                                                                                     <c:choose>
                                                                                     <c:when test="${cmt.users.userId == uCmt.userId }">
                                                                                        <h4 class="rating-name mb-1 d-flex justify-content-start align-items-center">
                                                                                             <div class="rating-name me-3">
                                                                                                ${uCmt.name}
                                                                                            </div>
                                                                                            <div class="rating-day" value="${cmt.createTime}">
                                                                                                <span class="rating-time ms-1 fs-6 color-dimgrey" value="${cmt.createTime}">${cmt.createTime}</span>
                                                                                                <span class="rating-date ms-1 fs-6 color-dimgrey" value="${cmt.createTime}">${cmt.createTime}</span>
                                                                                            </div>
                                                                                        </h4>

                                                                                        <!-- rating star -->
                                                                                        <c:forEach var="e" items="${listEnroll}">
                                                                                            <c:choose>
                                                                                            <c:when test="${cmt.users.userId == e.users.userId && cmt.lessons.lessonId == e.lessons.lessonId}">
                                                                                                <div class="comment-rating-quantity mb-2" value="${e.numberOfStar}">
                                                                                                    <span class="fs-6">
                                                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                                                            height="12" fill="#888"
                                                                                                            class="bi bi-star-fill text-warning"
                                                                                                            viewBox="0 0 16 16">
                                                                                                            <path
                                                                                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                                                        </svg>
                                                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                                                            height="12" fill="#888"
                                                                                                            class="bi bi-star-fill text-warning"
                                                                                                            viewBox="0 0 16 16">
                                                                                                            <path
                                                                                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                                                        </svg>
                                                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                                                            height="12" fill="#888"
                                                                                                            class="bi bi-star-fill text-warning"
                                                                                                            viewBox="0 0 16 16">
                                                                                                            <path
                                                                                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                                                        </svg>
                                                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                                                            height="12" fill="#888"
                                                                                                            class="bi bi-star-fill text-warning"
                                                                                                            viewBox="0 0 16 16">
                                                                                                            <path
                                                                                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                                                        </svg>
                                                                                                        <svg xmlns="http://www.w3.org/2000/svg" width="12"
                                                                                                            height="12" fill="#888"
                                                                                                            class="bi bi-star-fill text-warning"
                                                                                                            viewBox="0 0 16 16">
                                                                                                            <path
                                                                                                                d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z">
                                                                                                        </svg>
                                                                                                    </span>
                                                                                                </div>
                                                                                            </c:when>
                                                                                            </c:choose>
                                                                                        </c:forEach>
                                                                                    </c:when>
                                                                                    </c:choose>   
                                                                                </c:forEach>
                                                                                

                                                                                
                                                                                <p class="rating-content ">${cmt.comment}</p>
            
                                                                            </div>
                                                                            
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <div class="comment-body mb-4" style="margin-left: 45px;">
                                                                    <button type="button" data-toggle="reply-form" data-target="comment-${cmt.commentId}-reply-form" class ="btn btn-outline-secondary btn-sm">Trả lời</button>
                                                                    
                                                                    <!-- Reply form start -->
                                                                    <form action="reply?id=${cmt.commentId}" method="post" class="reply-form d-none" id="comment-${cmt.commentId}-reply-form">
                                                                        <div class="mb-3 col-md-9">
                                                                            <textarea name="reply-content" rows="3" id="Excerpt" class="form-control text-dark" placeholder="Nhập bình luận mới" style="height: 102px;"></textarea>
                                                                        </div>
                                                                        
                                                                        <button type="submit" class="btn btn-primary" class="new-comment-submit">Đăng tải</button>
                                                                        <button type="button" data-toggle="reply-form" data-target="comment-1-reply-form" class="btn btn-outline-secondary">Hủy</button>
                                                                    </form>
                                                                    
                                                                    <!-- Reply form end -->
                                                                </div>
                                                            </summary>
                                                    
                                                    
                                                            <div class="replies">
                                                                <!-- Comment 2 start -->
                                                                <details open class="comment" id="comment-2">
                                                                    <a href="#comment-2" class="comment-border-link d-none">
                                                                        <span class="sr-only">Jump to comment-2</span>
                                                                    </a>
                                                                    
                                                                    <!-- rep comments -->
                                                                    <c:forEach  var="rep" items="${listRep}">
                                                                        <c:choose>
                                            	                        <c:when test="${rep.commentLesson.commentId == cmt.commentId }">
                                                                            <summary>
                                                                                <div class="mb-4 ms-5">
                                                                                    <div class="comment-info">
                                                                                        <div class="rating-item d-flex align-items-start ">
                                                                                            <img src="../assets/images/avatar/avatar-2.jpg" alt=""
                                                                                                class="rounded-circle avatar-lg">
                                                                                            <div class="ms-3">
                                                                                                <h4 class="rating-name mb-1 d-flex justify-content-start align-items-center">
                                                                                                    <c:forEach var="uRep" items="${listUser}">
                                                                                                        <c:choose>
                                                                                                        <c:when test="${rep.users.userId == uRep.userId }">
                                                                                                            <div class="rating-name me-2">
                                                                                                                ${uRep.name}
                                                                                                            </div>
                                                                                                        </c:when>
                                                                                                        </c:choose>   
                                                                                                    </c:forEach>
                                                                                                    
                                                                                                    <div class="rating-day" value="${cmt.createTime}">
                                                                                                        <span class="rating-time ms-1 fs-6 color-dimgrey" value="${rep.createTime}">${rep.createTime}</span>
                                                                                                        <span class="rating-date ms-1 fs-6 color-dimgrey" value="${rep.createTime}">${rep.createTime}</span>
                                                                                                    </div>
                                                                                                </h4>
                                                                                                
                                                                                                
                                                                                                <p class="rep-comment__text">${rep.replyComment}</p>
                                                                                            </div>
                                                                                        </div>
                                                                                        
                                                                                    </div>
                                                                                </div>
                                                                            </summary>
                                                                        </c:when>
                                                                        </c:choose>
                                                                    </c:forEach>
                                                                    
                                                                </details>
                                                                <!-- Comment 2 end -->
                                                    
                                                                <!-- <a href="#load-more">Load more replies</a> -->
                                                            </div>
                                                        </details>
                                                        <!-- Comment 1 end -->
                                                    </div>
                                                    
                                                </c:when>
                                                </c:choose>
                                        </c:forEach>
                                            

                                            <!-- new comment -->
                                            <form action="comment?lessId=${lesson.lessonId}" method="post" class="form-new-comment">
                                               
                                                <label for="Excerpt" class="form-label">Bình luận</label>
                                           
                                                <div class="mb-3 col-md-9">
                                                    <textarea name = "comment-content" rows="3" id="Excerpt" class="form-control text-dark" placeholder="Nhập bình luận mới" style="height: 102px;"></textarea>
                                                    <small>Đăng tải những đóng góp của bạn.</small>
                                                </div>
                                                <button type="submit" class="btn btn-primary" class="new-comment-submit">Đăng tải</button>
                                            </form>

                                            
                                        </div>

                             
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>
    <!-- Footer -->
    <!-- Footer -->
<footer class="footer">
<div class="container">
    <div class="row align-items-center g-0 border-top py-2">
        <!-- Desc -->
        <div class="col-md-6 col-12 text-center text-md-start">
            <span>
                ©
                <span id="copyright">
                    <script>
                        document.getElementById("copyright").appendChild(document.createTextNode(new Date().getFullYear()));
                    </script>
                </span>
                Geeks. All Rights Reserved.
            </span>
        </div>
        <!-- Links -->
        <div class="col-12 col-md-6">
            <nav class="nav nav-footer justify-content-center justify-content-md-end">
                <a class="nav-link active ps-0" href="#!">Privacy</a>
                <a class="nav-link" href="#!">Terms</a>
                <a class="nav-link" href="#!">Feedback</a>
                <a class="nav-link" href="#!">Support</a>
            </nav>
        </div>
    </div>
</div>
</footer>


    <!-- Scroll top -->
    <div class="btn-scroll-top">
<svg class="progress-square svg-content" width="100%" height="100%" viewBox="0 0 40 40">
    <path d="M8 1H32C35.866 1 39 4.13401 39 8V32C39 35.866 35.866 39 32 39H8C4.13401 39 1 35.866 1 32V8C1 4.13401 4.13401 1 8 1Z" />
</svg>
</div>


<!-- Style css-->
<style>
    
button {
    -moz-appearance: none;
    -webkit-appearance: none;
    appearance: none;
    font-size: 14px;
    padding: 4px 8px;
    color: rgba(0, 0, 0, 0.85);
    background-color: #fff;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-radius: 4px;
}
button:hover,
button:focus,
button:active {
    cursor: pointer;
    background-color: #ecf0f1;
}
.comment-thread {
    width: 100%;
    max-width: 100%;
    margin: auto;
    background-color: #fff;
    border: 1px solid transparent; /* Removes margin collapse */
}
.m-0 {
    margin: 0;
}
.sr-only {
    position: absolute;
    left: -10000px;
    top: auto;
    width: 1px;
    height: 1px;
    overflow: hidden;
}

/* Comment */

.comment {
    position: relative;
    margin: 20px auto;
}
.comment-heading {
    display: flex;
    align-items: center;
    /* height: 50px; */
    font-size: 14px;
}
.comment-voting {
    width: 20px;
    height: 32px;
    border: 1px solid rgba(0, 0, 0, 0.2);
    border-radius: 4px;
}
.comment-voting button {
    display: block;
    width: 100%;
    height: 50%;
    padding: 0;
    border: 0;
    font-size: 10px;
}
.comment-info {
    color: rgba(0, 0, 0, 0.5);
    
}
.comment-author {
    color: rgba(0, 0, 0, 0.85);
    font-weight: bold;
    text-decoration: none;
}
.comment-author:hover {
    text-decoration: underline;
}
.replies {
    margin-left: 20px;
}

/* Adjustments for the comment border links */

.comment-border-link {
    display: block;
    position: absolute;
    top: 50px;
    left: 0;
    width: 12px;
    height: calc(100% - 50px);
    border-left: 4px solid transparent;
    border-right: 4px solid transparent;
    background-color: rgba(0, 0, 0, 0.1);
    background-clip: padding-box;
}
.comment-border-link:hover {
    background-color: rgba(0, 0, 0, 0.3);
}
.comment-body {
    padding: 0 20px;
    padding-left: 28px;
}
.replies {
    margin-left: 28px;
}

/* Adjustments for toggleable comments */

details.comment summary {
    position: relative;
    list-style: none;
    cursor: pointer;
}
details.comment summary::-webkit-details-marker {
    display: none;
}
details.comment:not([open]) .comment-heading {
    /* border-bottom: 1px solid rgba(0, 0, 0, 0.2); */
}
.comment-heading::after {
    display: inline-block;
    position: absolute;
    right: 5px;
    align-self: center;
    font-size: 12px;
    color: rgba(0, 0, 0, 0.55);
}
details.comment[open] .comment-heading::after {
    content: "Ẩn bình luận";
}
details.comment:not([open]) .comment-heading::after {
    content: "Hiện bình luận";
}

/* Adjustment for Internet Explorer */

@media screen and (-ms-high-contrast: active), (-ms-high-contrast: none) {
    /* Resets cursor, and removes prompt text on Internet Explorer */
    .comment-heading {
        cursor: default;
    }
    details.comment[open] .comment-heading::after,
    details.comment:not([open]) .comment-heading::after {
        content: " ";
    }
}

/* Styling the reply to comment form */

.reply-form textarea {
    font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol";
    font-size: 16px;
    width: 100%;
    max-width: 100%;
    margin-top: 15px;
    margin-bottom: 5px;
}
.d-none {
    display: none;
}

/* rating css */
.star-rating {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
}

.radio-input {
  position: fixed;
  opacity: 0;
  pointer-events: none;
}

.radio-label {
  cursor: pointer;
  font-size: 0;
  color: rgba(0,0,0,0.2);
  transition: color 0.1s ease-in-out;
}

.radio-label:before {
  content: "★";
  display: inline-block;
  font-size: 48px;
  margin: -12px 4px 0 4px;
}

.radio-input:checked ~ .radio-label {
  color: #ffc700;
  color: gold;
}

.radio-label:hover,
.radio-label:hover ~ .radio-label {
  color: goldenrod;
}

.radio-input:checked + .radio-label:hover,
.radio-input:checked + .radio-label:hover ~ .radio-label,
.radio-input:checked ~ .radio-label:hover,
.radio-input:checked ~ .radio-label:hover ~ .radio-label,
.radio-label:hover ~ .radio-input:checked ~ .radio-label {
  color: darkgoldenrod;
}


.average-rating {
  position: relative;
  appearance: none;
  color: transparent;
  width: auto;
  display: inline-block;
  vertical-align: baseline;
  font-size: 25px;
}

.average-rating::before {
  --percent: calc(4.3/5*100%);
  content: '★★★★★';
  position: absolute;
  top: 0;
  left: 0;
  color: rgba(0,0,0,0.2);
  background: linear-gradient(90deg, gold var(--percent), rgba(0,0,0,0.2) var(--percent));
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
}
</style>

    <!-- Scripts -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>

    // hide/show form repcomment
	console.log(${lessID});
    document.addEventListener(
    "click",
    function(event) {
        var target = event.target;
        var replyForm;
        if (target.matches("[data-toggle='reply-form']")) {
            replyForm = document.getElementById(target.getAttribute("data-target"));
            replyForm.classList.toggle("d-none");
        }
    },
    false
    );

    
    // const detailsElements = document.querySelectorAll('details');

    // // Lặp qua từng phần tử <details>
    // detailsElements.forEach((detailsElement) => {
    //     // Lắng nghe sự kiện nhấn phím
    //     detailsElement.addEventListener('keydown', (event) => {
    //         // Kiểm tra nếu phím Space được nhấn
    //         if (event.code === 'Space') {
    //         // Ngăn chặn hành vi mặc định của phím Space (cuộn trang)
    //         // event.preventDefault();
            
    //         // Thay đổi thuộc tính "open" của phần tử <details>
    //         detailsElement.open = true;
    //         console.log(detailsElement.open);
    //         }
    //     }, true);
    // });

    // textarea.addEventListener('keydown', function(event) {
    //     if (event.key === ' ' && event.target === textarea) {
    //         event.stopPropagation();
    //         detailsElement.open = true;
    //     }
    //     }, true);

    // xu ly đánh giá sao
    const starRatingForm = document.querySelector(".star-rating") 
    const handleFormChange = (e) => {
        var res = document.getElementById("result-rating");
        res.setAttribute("value",e.target.value );
        res.innerHTML = e.target.value;
        console.log(res.innerHTML);
        return e.target.value
    }
    starRatingForm.addEventListener("change", handleFormChange)

    // xu ly hien thi rating
    var rate = document.querySelectorAll(".comment-rating-quantity");
    console.log(rate);
    $(document).ready(function() {
        $(window).on("load", function() {
            for (var i = 0; i < rate.length; i++){
                var rateNum = rate[i].getAttribute("value");
                var listStart = rate[i].querySelectorAll("svg");
            
                for (var j = 0; j < rateNum; j++){
                    listStart[j].setAttribute("fill", "currentColor");      
                }
            }

            loadTime();
        });
    });

    //format date:
    var createTime = "${cmt.createTime}";
    var days = document.getElementsByClassName("rating-day");
    function loadTime(){
        for(var i = 0; i < days.length; i++ ){
            console.log(days[i]);
            var dateObj = new Date(days[i].getAttribute("value"));
            var formattedDate = dateObj.toLocaleDateString();
            var formattedTime = dateObj.toLocaleTimeString();

            console.log(formattedTime);
            console.log(formattedDate);
            days[i].querySelector(".rating-time").innerHTML = formattedTime;
            days[i].querySelector(".rating-date").innerHTML = formattedDate;
        }
    }
    

   

    //show my old rating
    // var stars = document.querySelectorAll(".radio-label");
    // console.log(stars);
    // function showOldRating(num = 4){
    //     var len = stars.length
    //     for(var i = 0; i < num;i++){
    //         var j = 5- i;
    //         console.log(j);
    //         stars[j].style.color = "gold";
    //     }
    // }
    // showOldRating();
</script>
    <!-- Libs JS -->
<script src="../assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
<script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

<!-- Theme JS -->
<script src="../assets/js/theme.min.js"></script>

</body>


</html>