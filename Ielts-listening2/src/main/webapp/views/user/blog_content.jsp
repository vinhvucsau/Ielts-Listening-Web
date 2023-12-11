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
    <!-- Content -->
    <section class="py-7 py-lg-8">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-8 col-md-12 col-12 mb-2">
                    <div class="text-center mb-4">
                        <a href="#" class="fs-5 fw-semibold d-block mb-4 text-primary">Courses</a>
                        <h1 class="display-3 fw-bold mb-4">${blog.title }</h1>
                        <span class="mb-3 d-inline-block">4 min read</span>
                    </div>
                    <!-- Media -->
                    <div class="d-flex justify-content-between align-items-center mb-5">
                        <div class="d-flex align-items-center">
                            <img src="../assets/images/avatar/avatar-4.jpg" alt="avatar" class="rounded-circle avatar-md " >
                            <div class="ms-2 lh-1">	
                                <h5 class="mb-1">${blog.users.name}</h5>
                                <span class="text-primary">Marketing Manager</span>
                            </div>
                        </div>
                        <div>
                            <span class="ms-2">Share</span>
                            <a href="#" class="ms-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                    <path
                                        d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z " >
                                </svg>
                            </a>
                            <a href="#" class="ms-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                                    <path
                                        d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z " >
                                </svg>
                            </a>
                            <a href="#" class="ms-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-linkedin" viewBox="0 0 16 16">
                                    <path
                                        d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4z " >
                                </svg>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <!-- Image -->
                <div class="col-xl-10 col-lg-10 col-md-12 col-12 mb-6">
                    <img src="<c:url value='/image?fname=${folder}/${blog.image }'/>" alt="blogpost" class="img-fluid rounded-3 w-100 " >
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="col-xl-8 col-lg-8 col-md-12 col-12 mb-2">
                    <!-- Descriptions -->
                    <div>
                        <div class="mb-4">
                            <h3 class="lead text-dark">
                               ${blog.content}
                            </h3>
                            <p>
                             <!--    Condimentum leo utipsum euismod feugiatn elntum sapiennonser variusmi elementum necunc elementum velitnon tortor convallis variusa placerat nequhse. Mauris
                                varius ullamcorper tincidsellus egestas innisivel sollicituullam feugiate facilisis ones Suspendisse blandit sedtincinean.--> 
                            </p>
                            <p>
                                <!-- Mauris varius ullamcorper tincidsellus egestas innisivel sollicituullam feugiate facilisis ones velleo finibus maximus nequsese sedmattis auspendisse
                                <span class="border-bottom border-danger">duimetus ullamcorper faucibuse blandit</span>
                                sedtincinean. -->
                            </p>
                        </div>
                        <hr class="mt-lg-8 mb-lg-6 my-md-6 " >
                        <blockquote class="blockquote text-center">
                            <p class="text-primary font-italic fw-semibold lh-lg h1 px-2 px-lg-8">"Failure will never overtake me if my determination to succeed is strong enough."</p>
                            <footer class="blockquote-footer mt-3">
                                <cite title="Source Title">Og Mandino</cite>
                            </footer>
                        </blockquote>
                        <hr class="mt-lg-6 mb-lg-8 my-md-6 " >
                        <div class="mb-4">
                            <p>
                                <!-- Condimentum leo utipsum euismod feugiatn elntum
                                <strong>sapiennonser variusmi elementum</strong>
                                necunc elem entum velitnon tortor convallis variusa placerat nequhse. Quis eu Lorem irure magna. Ex labore reprehenderit veniam irure id nostrud velit. Minim
                                aliquip cillum laborum qui Lorem eu. -->
                            </p>
                            <p>
                               <!--  Sint officia nulla deserunt voluptate non amet consequat ipsum tempor. Nulla id cupidatat ipsum occaecat. Aute ad et fugiat velit sunt qui veniam labore elit
                                ipsum commodo proident. Sit tempor consectetur commodo laborum mollit. Enim sint nostrud nisi in ad aliqua laboris ad non. -->
                            </p>
                        </div>
                        <!-- List unstyled -->
                        <div class="mb-5">
                            <h3 class="mb-3">Unordered Lists (Nested)</h3>
                            <ul>
                                <!-- <li>Lorem ipsum dolor sit amet</li>
                                <li>Consectetur adipiscing elit</li>
                                <li>Integer molestie lorem at massa</li>
                                <li>Facilisis in pretium nisl aliquet</li>
                                <li>
                                    Nulla volutpat aliquam velit
                                    <ul>
                                        <li>Phasellus iaculis neque</li>
                                        <li>Purus sodales ultricies</li>
                                        <li>Vestibulum laoreet porttitor sem</li>
                                        <li>Ac tristique libero volutpat at</li>
                                    </ul>
                                </li>
                                <li>Faucibus porta lacus fringilla vel</li>
                                <li>Aenean sit amet erat nunc</li>
                                <li>Eget porttitor lorem</li> -->
                            </ul>
                        </div>
                        <div class="mb-5">
                            <h3 class="mb-3">Ordered List (Nested)</h3>
                            <ol>
                               <!--  <li>Lorem ipsum dolor sit amet</li>
                                <li>Consectetur adipiscing elit</li>
                                <li>Integer molestie lorem at massa</li>
                                <li>Facilisis in pretium nisl aliquet</li>
                                <li>
                                    Nulla volutpat aliquam velit
                                    <ol>
                                        <li>Phasellus iaculis neque</li>
                                        <li>Purus sodales ultricies</li>
                                        <li>Vestibulum laoreet porttitor sem</li>
                                        <li>Ac tristique libero volutpat at</li>
                                    </ol>
                                </li>
                                <li>Faucibus porta lacus fringilla vel</li>
                                <li>Aenean sit amet erat nunc</li>
                                <li>Eget porttitor lorem</li> -->
                            </ol>
                        </div>
                        <!-- Img alignment -->
                        <div class="mb-5">
                            <h2 class="mb-2">Image Alignment</h2>
                            <p>
                               <!-- text -->
                            </p>
                            <!-- Img  -->
                            <img src="../assets/images/blog/center-img.jpg" alt="centerimg" class="img-fluid rounded-3 mb-2 mt-3 w-100 " >
                            <span>The image above happens to be centered.</span>
                            <div class="d-flex align-items-start mt-4">
                                <!-- Img  -->
                                <img src="../assets/images/blog/left-img.jpg" alt="leftimg" class="img-fluid me-4 rounded-3 d-none d-lg-block d-md-block " >
                                <div>
                                    <!-- <p>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150×150 image, which is left aligned.</p>
                                    <p>
                                        As you can see the should be some space above, below, and to the right of the image. The text should not be creeping on the image. Creeping is just not
                                        right. Images need breathing room too.
                                    </p> -->
                                </div>
                            </div>
                        </div>
                        <div class="mb-4">
                            <p>
								<!--  -->
                            </p>
                        </div>
                        <div class="mb-4">
                            <div class="d-flex align-items-start">
                                <div>
                                    <!-- <p>The rest of this paragraph is filler for the sake of seeing the text wrap around the 150×150 image, which is right aligned.</p>
                                    <p>
                                        And now we’re going to shift things to the right align. Again, there should be plenty of room above, below, and to the left of the image. Just look at
                                        him there… Hey guy! Way to rock that right side. I don’t care what the left aligned image says, you look great. Don’t let anyone else tell you
                                        differently.
                                    </p> -->
                                </div>
                                <img src="../assets/images/blog/right-img.jpg" alt="rightimg" class="img-fluid ms-4 rounded-3 d-none d-lg-block d-md-block " >
                            </div>
                        </div>
                        <div class="mb-4">
                            <p class="mb-0"></p>
                        </div>
                    </div>

                    <!-- Media -->
                    <hr class="mt-8 mb-5 " >
                    <div class="d-flex justify-content-between align-items-center mb-5">
                        <div class="d-flex align-items-center">
                            <img src="../assets/images/avatar/avatar-4.jpg" alt="avatar" class="rounded-circle avatar-md " >
                            <div class="ms-2 lh-1">
                                <h5 class="mb-1">${blog.users.name }</h5>
                                <span class="text-primary">Marketing Manager</span>
                            </div>
                        </div>
                        <div>
                            <span class="ms-2">Share</span>
                            <a href="#" class="ms-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                    <path
                                        d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z " >
                                </svg>
                            </a>
                            <a href="#" class="ms-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                                    <path
                                        d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z " >
                                </svg>
                            </a>
                            <a href="#" class="ms-2">
                                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" fill="currentColor" class="bi bi-linkedin" viewBox="0 0 16 16">
                                    <path
                                        d="M0 1.146C0 .513.526 0 1.175 0h13.65C15.474 0 16 .513 16 1.146v13.708c0 .633-.526 1.146-1.175 1.146H1.175C.526 16 0 15.487 0 14.854V1.146zm4.943 12.248V6.169H2.542v7.225h2.401zm-1.2-8.212c.837 0 1.358-.554 1.358-1.248-.015-.709-.52-1.248-1.342-1.248-.822 0-1.359.54-1.359 1.248 0 .694.521 1.248 1.327 1.248h.016zm4.908 8.212V9.359c0-.216.016-.432.08-.586.173-.431.568-.878 1.232-.878.869 0 1.216.662 1.216 1.634v3.865h2.401V9.25c0-2.22-1.184-3.252-2.764-3.252-1.274 0-1.845.7-2.165 1.193v.025h-.016a5.54 5.54 0 0 1 .016-.025V6.169h-2.4c.03.678 0 7.225 0 7.225h2.4z " >
                                </svg>
                            </a>
                        </div>
                    </div>
                    <!-- Subscribe to Newsletter -->
                    <div class="py-lg-8 py-6">
                        <div class="text-center mb-6">
                            <h2 class="display-4 fw-bold">Sign up for our Newsletter</h2>
                            <p class="mb-0 lead">Join our newsletter and get resources, curated content, and design inspiration delivered straight to your inbox.</p>
                        </div>
                        <!-- Form -->
                        <form class="row px-md-8 mx-md-8 gx-2 needs-validation" novalidate>
                            <div class="col">
                                <input type="email" class="form-control" placeholder="Email Address" required />
                                <div class="invalid-feedback">Please enter valid Email Address</div>
                            </div>
                            <div class="col-auto">
                                <button class="btn btn-primary" type="submit">Submit</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Container -->
        <div class="container">
            <div class="row">
                <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                    <div class="my-5">
                        <h2>Related Post</h2>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-12">
                    <!-- Card -->
                    <div class="card mb-4 shadow-lg card-lift">
                        <a href="blog-single.html"><img src="../assets/images/blog/blogpost-3.jpg" class="card-img-top" alt="blogpost " ></a>
                        <!-- Card body -->
                        <div class="card-body">
                            <a href="#" class="fs-5 fw-semibold d-block mb-3 text-primary">Workshop</a>
                            <a href="blog-single.html">
                                <h3>The Best DevOps Tools for Your Application Lifecycle</h3>
                            </a>
                            <p>Inventore pariatur veritatis maxime fugiat sint dolorem officiis nemo quis!</p>
                            <!-- Media content -->
                            <div class="row align-items-center g-0 mt-4">
                                <div class="col-auto">
                                    <img src="../assets/images/avatar/avatar-1.jpg" alt="avatar" class="rounded-circle avatar-sm me-2 " >
                                </div>
                                <div class="col lh-1">
                                    <h5 class="mb-1">Dustin Warren</h5>
                                    <p class="fs-6 mb-0">September 09, 2020</p>
                                </div>
                                <div class="col-auto">
                                    <p class="fs-6 mb-0">12 Min Read</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-12">
                    <!-- Card -->
                    <div class="card mb-4 shadow-lg card-lift">
                        <a href="blog-single.html"><img src="../assets/images/blog/blogpost-6.jpg" class="card-img-top" alt="blogpost " ></a>
                        <!-- Card body -->
                        <div class="card-body">
                            <a href="#" class="fs-5 fw-semibold d-block mb-3 text-info">Courses</a>
                            <h3><a href="blog-single.html" class="text-inherit">How to become modern Stack Developer in 2020</a></h3>
                            <p>At beatae non sit dicta simili quepers lem piciatis facilis veritatis quam. corrupti?</p>
                            <div class="row align-items-center g-0 mt-4">
                                <div class="col-auto">
                                    <img src="../assets/images/avatar/avatar-2.jpg" alt="avatar" class="rounded-circle avatar-sm me-2 " >
                                </div>
                                <div class="col lh-1">
                                    <h5 class="mb-1">Sia Port</h5>
                                    <p class="fs-6 mb-0">September 10, 2020</p>
                                </div>
                                <div class="col-auto">
                                    <p class="fs-6 mb-0">10 Min Read</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-4 col-lg-4 col-md-6 col-12">
                    <!-- Card -->
                    <div class="card mb-4 shadow-lg card-lift">
                        <a href="blog-single.html"><img src="../assets/images/blog/blogpost-5.jpg" class="card-img-top" alt="blogpost " ></a>
                        <!-- Card body -->
                        <div class="card-body">
                            <a href="#" class="fs-5 fw-semibold d-block mb-3 text-warning">Warning</a>
                            <h3><a href="blog-single.html" class="text-inherit">How to Become a Data Scientist?</a></h3>
                            <p>Nulla voluptate in facere saepe est alias et iste, accusantium sint enim!</p>
                            <!-- Media content -->
                            <div class="row align-items-center g-0 mt-4">
                                <div class="col-auto">
                                    <img src="../assets/images/avatar/avatar-3.jpg" alt="avatar" class="rounded-circle avatar-sm me-2 " >
                                </div>
                                <div class="col lh-1">
                                    <h5 class="mb-1">Miron Sulla</h5>
                                    <p class="fs-6 mb-0">September 11, 2020</p>
                                </div>
                                <div class="col-auto">
                                    <p class="fs-6 mb-0">14 Min Read</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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

	<!-- Libs JS -->
	<script src="../assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
	<script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>

	<!-- Theme JS -->
	<script src="../../assets/js/theme.min.js"></script>
    <script src="../assets/js/vendors/validation.js"></script>


</body>
</html>
