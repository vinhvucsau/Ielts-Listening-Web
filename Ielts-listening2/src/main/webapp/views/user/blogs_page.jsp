<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/common/taglib.jsp"%>
<!doctype html>
<html lang="vi">
    
<!-- Mirrored from geeksui.codescandy.com/geeks/pages/landings/landing-courses.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 25 Nov 2023 06:34:48 GMT -->
<head>
    <!-- Required meta tags -->
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="Codescandy" />
	
	<!-- Favicon icon-->
	<link rel="shortcut icon" type="image/x-icon" href="../../assets/images/favicon/favicon.ico" />
	
	<!-- darkmode js -->
	<script src="../../assets/js/vendors/darkMode.js"></script>
	
	<!-- Libs CSS -->
	<link href="../../assets/fonts/feather/feather.css" rel="stylesheet" />
	<link href="../../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet" />
	<link href="../../assets/libs/simplebar/dist/simplebar.min.css" rel="stylesheet" />
	
	<!-- Theme CSS -->
	<link rel="stylesheet" href="../../assets/css/theme.min.css">

    <link rel="canonical" href="admin-cms-post.html" >
    <title>Bài viết</title>
    
    
   
</head>

<body class="bg-white">

    <!-- Page content -->
    <main>
        <!-- Page header -->
        <section class="py-8">
          <div class="container">
            <div class="row">
              <div class="offset-xl-2 col-xl-8 offset-lg-1 col-lg-10 col-md-12 col-12">
                <div class="text-center mb-5">
                  <h1 class="display-2 fw-bold">Bài viết</h1>
                </div>
                
              </div>
            </div>
          </div>
        </section>
        <!-- Content -->
        <section class="pb-8">
          <div class="container">
            <div class="row">
              <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                
              </div>
              <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                <!-- Card -->
                <div class="card mb-4 shadow-lg card-lift">
                  <div class="row g-0">
                    <!-- Image -->
                    <a href="blog-single.html" class="col-lg-8 col-md-12 col-12 bg-cover img-left-rounded" style="background-image: url(https://images.unsplash.com/photo-1589224906659-03c8b0af4f7c?q=80&w=1770&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D)">
                      <img src="../assets/images/blog/blogpost-2.jpg" class="img-fluid d-lg-none invisible" alt="blogpost " />
                    </a>
                    <div class="col-lg-4 col-md-12 col-12">
                      <!-- Card body -->
                      <div class="card-body">
                        <p class="fs-5 mb-3 fw-semibold d-block">Bài viết</p>
                        <h1 class="mb-2 mb-lg-4"><a href="blog-single.html" class="text-inherit">Luyện nghe cùng PREP</a></h1>
                        <p>Our features, journey, tips and us being us. Lorem ipsum dolor sit amet, accumsan in, tempor dictum neque.</p>
                        <!-- Media content -->
                        <div class="row align-items-center g-0 mt-lg-7 mt-4">
                          <div class="col-auto">
                            <!-- Img  -->
                            <img src="../assets/images/avatar/avatar-6.jpg" alt="avatar" class="rounded-circle avatar-sm me-2" />
                          </div>
                          <div class="col lh-1">
                            <h5 class="mb-1">Dustin Warren</h5>
                            <p class="fs-6 mb-0">September 13, 2020</p>
                          </div>
                          <div class="col-auto">
                            <p class="fs-6 mb-0">6 Min Read</p>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            <c:forEach var="blog" items="${listBlog}">
                <div class="col-xl-4 col-lg-4 col-md-6 col-12">
                    <div class="card mb-4 shadow-lg card-lift">
                        <a href="<c:url value='/user/blog-content?id=${blog.blogId}'/>">
                        <img src="<c:url value='/image?fname=${topicIMG}/${blog.image}'/>" class="card-img-top" alt="blogpost " />
                        </a>
                        <div class="card-body">
                        <p class="fs-5 mb-2 fw-semibold d-block text-success">Bài viết</p>
                        <h3><a href="<c:url value='/user/blog-content?id=${blog.blogId}'/>" class="blog-title__text text-primary text-inherit">${blog.title}</a></h3>
                        <div class="blog-content__text">${blog.content}</div>
                        <div class="row align-items-center g-0 mt-4">
                            <div class="col-auto">
                            <img src="<c:url value='/image?fname=${avatarIMG}/${blog.users.image}'/>" alt="avatar" 
                              class="rounded-circle avatar-sm me-2" onerror="this.onerror=null; this.src=''"/>
                            </div>
                            <div class="col lh-1">
                            <h5 class="mb-1">${blog.users.name}</h5>
                            <p class="fs-6 mb-0">${blog.createdDate}</p>
                            </div>
                            <div class="col-auto">
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
              <!-- Buttom -->
              
            </div>
          </div>
        </section>
      </main>
 	 
	<!-- Scroll top -->
	<div class="btn-scroll-top">
		<svg class="progress-square svg-content" width="100%" height="100%" viewBox="0 0 40 40">
		<path d="M8 1H32C35.866 1 39 4.13401 39 8V32C39 35.866 35.866 39 32 39H8C4.13401 39 1 35.866 1 32V8C1 4.13401 4.13401 1 8 1Z" />
		</svg>
	</div>

  <style>
    .card-img-top{
      width: 100%;
      aspect-ratio: 3/2;
      object-fit: cover;
      object-position: center;
    }
    .blog-content__text{
      display: none;
      display: -webkit-box;
      -webkit-box-orient: vertical;
      -webkit-line-clamp: 2;
      overflow: hidden;
    }
  </style>

	<!-- Libs JS -->
	<script src="../assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
	<script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

	<!-- Theme JS -->
	<script src="../../assets/js/theme.min.js"></script>
    <script src="../assets/js/vendors/validation.js"></script>


</body>
</html>
