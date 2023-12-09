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
        <nav class="navbar navbar-expand-lg">
          <div class="container-fluid px-0">
            <a class="navbar-brand" href="../index.html"><img src="../assets/images/brand/logo/logo.svg" alt="Geeks" /></a>
            <div class="order-lg-3 d-flex align-items-center">
              <div>
                <div class="d-flex align-items-center">
                  <div class="dropdown me-2">
                    <button class="btn btn-light btn-icon rounded-circle d-flex align-items-center" type="button" aria-expanded="false" data-bs-toggle="dropdown" aria-label="Toggle theme (auto)">
                      <i class="bi theme-icon-active"></i>
                      <span class="visually-hidden bs-theme-text">Toggle theme</span>
                    </button>
                    <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="bs-theme-text">
                      <li>
                        <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="light" aria-pressed="false">
                          <i class="bi theme-icon bi-sun-fill"></i>
                          <span class="ms-2">Light</span>
                        </button>
                      </li>
                      <li>
                        <button type="button" class="dropdown-item d-flex align-items-center" data-bs-theme-value="dark" aria-pressed="false">
                          <i class="bi theme-icon bi-moon-stars-fill"></i>
                          <span class="ms-2">Dark</span>
                        </button>
                      </li>
                      <li>
                        <button type="button" class="dropdown-item d-flex align-items-center active" data-bs-theme-value="auto" aria-pressed="true">
                          <i class="bi theme-icon bi-circle-half"></i>
                          <span class="ms-2">Auto</span>
                        </button>
                      </li>
                    </ul>
                  </div>
                  <a href="#" class="btn btn-outline-primary shadow-sm me-2 d-none d-md-block">Sign In</a>
                  <a href="#" class="btn btn-primary d-none d-md-block me-2 me-lg-0">Sign Up</a>
                </div>
              </div>
              <!-- Button -->
              <button
                class="navbar-toggler collapsed"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbar-default"
                aria-controls="navbar-default"
                aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="icon-bar top-bar mt-0"></span>
                <span class="icon-bar middle-bar"></span>
                <span class="icon-bar bottom-bar"></span>
              </button>
            </div>
  
            <!-- Collapse -->
            <div class="collapse navbar-collapse" id="navbar-default">
              <ul class="navbar-nav">
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarBrowse" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">Browse</a>
                  <ul class="dropdown-menu dropdown-menu-arrow" aria-labelledby="navbarBrowse">
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Web Development</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="dropdown-item" href="course-category.html">Bootstrap</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">React</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">GraphQl</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Gatsby</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Grunt</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Svelte</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Meteor</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">HTML5</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Angular</a>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Design</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="dropdown-item" href="course-category.html">Graphic Design</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Illustrator</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">UX / UI Design</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Figma Design</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Adobe XD</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Sketch</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Icon Design</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Photoshop</a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a href="course-category.html" class="dropdown-item">Mobile App</a>
                    </li>
                    <li>
                      <a href="course-category.html" class="dropdown-item">IT Software</a>
                    </li>
                    <li>
                      <a href="course-category.html" class="dropdown-item">Marketing</a>
                    </li>
                    <li>
                      <a href="course-category.html" class="dropdown-item">Music</a>
                    </li>
                    <li>
                      <a href="course-category.html" class="dropdown-item">Life Style</a>
                    </li>
                    <li>
                      <a href="course-category.html" class="dropdown-item">Business</a>
                    </li>
                    <li>
                      <a href="course-category.html" class="dropdown-item">Photography</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarLanding" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Landings</a>
                  <ul class="dropdown-menu" aria-labelledby="navbarLanding">
                    <li>
                      <h4 class="dropdown-header">Landings</h4>
                    </li>
  
                    <li>
                      <a href="landings/landing-education.html" class="dropdown-item justify-content-between">Education</a>
                    </li>
                    <li>
                      <a href="landings/home-academy.html" class="dropdown-item justify-content-between">Home Academy</a>
                    </li>
                    <li>
                      <a href="landings/landing-courses.html" class="dropdown-item">Courses</a>
                    </li>
                    <li>
                      <a href="landings/course-lead.html" class="dropdown-item">Lead Course</a>
                    </li>
                    <li>
                      <a href="landings/request-access.html" class="dropdown-item">Request Access</a>
                    </li>
  
                    <li>
                      <a href="landings/landing-sass.html" class="dropdown-item">SaaS</a>
                    </li>
  
                    <li>
                      <a href="landings/landing-job.html" class="dropdown-item justify-content-between">Job Listing</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarPages" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Pages</a>
                  <ul class="dropdown-menu dropdown-menu-arrow" aria-labelledby="navbarPages">
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Courses</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="dropdown-item" href="course-single.html">Course Single</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-single-v2.html">Course Single v2</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-resume.html">Course Resume</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-category.html">Course Category</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-checkout.html">Course Checkout</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="course-filter-list.html">Course List/Grid</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="add-course.html">Add New Course</a>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Paths</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a href="course-path.html" class="dropdown-item">Browse Path</a>
                        </li>
                        <li>
                          <a href="course-path-single.html" class="dropdown-item">Path Single</a>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Blog</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="dropdown-item" href="blog.html">Listing</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="blog-single.html">Article</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="blog-category.html">Category</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="blog-sidebar.html">Sidebar</a>
                        </li>
                      </ul>
                    </li>
  
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Career</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="dropdown-item" href="career.html">Overview</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="career-list.html">Listing</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="career-single.html">Opening</a>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Portfolio</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="dropdown-item" href="portfolio.html">List</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="portfolio-single.html">Single</a>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Job</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="dropdown-item" href="landings/landing-job.html">Home</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="jobs/job-listing.html">List</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="jobs/job-grid.html">Grid</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="jobs/job-single.html">Single</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="jobs/company-list.html">Company List</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="jobs/company-about.html">Company Single</a>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Specialty</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="dropdown-item" href="coming-soon.html">Coming Soon</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="404-error.html">Error 404</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="maintenance-mode.html">Maintenance Mode</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="terms-condition-page.html">Terms & Conditions</a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <hr class="mx-3" />
                    </li>
  
                    <li>
                      <a class="dropdown-item" href="about.html">About</a>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Help Center</a>
                      <ul class="dropdown-menu">
                        <li>
                          <a class="dropdown-item" href="help-center.html">Help Center</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="help-center-faq.html">FAQ's</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="help-center-guide.html">Guide</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="help-center-guide-single.html">Guide Single</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="help-center-support.html">Support</a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <a class="dropdown-item" href="pricing.html">Pricing</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="compare-plan.html">Compare Plan</a>
                    </li>
  
                    <li>
                      <a class="dropdown-item" href="contact.html">Contact</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarAccount" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Accounts</a>
                  <ul class="dropdown-menu dropdown-menu-arrow" aria-labelledby="navbarAccount">
                    <li>
                      <h4 class="dropdown-header">Accounts</h4>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Instructor</a>
                      <ul class="dropdown-menu">
                        <li class="text-wrap">
                          <h5 class="dropdown-header text-dark">Instructor</h5>
                          <p class="dropdown-text mb-0">Instructor dashboard for manage courses and earning.</p>
                        </li>
                        <li>
                          <hr class="mx-3" />
                        </li>
                        <li>
                          <a class="dropdown-item" href="dashboard-instructor.html">Dashboard</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="instructor-profile.html">Profile</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="instructor-courses.html">My Courses</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="instructor-order.html">Orders</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="instructor-reviews.html">Reviews</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="instructor-students.html">Students</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="instructor-payouts.html">Payouts</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="instructor-earning.html">Earning</a>
                        </li>
                        <li class="dropdown-submenu dropend">
                          <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">
                            Quiz
                            <span class="badge bg-primary ms-1">New</span>
                          </a>
                          <ul class="dropdown-menu">
                            <li>
                              <a class="dropdown-item" href="instructor-quiz.html">Quiz</a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="instructor-quiz-details.html">Single</a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="instructor-quiz-result.html">Result</a>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Students</a>
                      <ul class="dropdown-menu">
                        <li class="text-wrap">
                          <h5 class="dropdown-header text-dark">Students</h5>
                          <p class="dropdown-text mb-0">Students dashboard to manage your courses and subscriptions.</p>
                        </li>
                        <li>
                          <hr class="mx-3" />
                        </li>
                        <li>
                          <a class="dropdown-item" href="dashboard-student.html">Dashboard</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="student-subscriptions.html">Subscriptions</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="payment-method.html">Payments</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="billing-info.html">Billing Info</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="invoice.html">Invoice</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="invoice-details.html">Invoice Details</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="dashboard-student.html">Bookmarked</a>
                        </li>
                        <li>
                          <a class="dropdown-item" href="dashboard-student.html">My Path</a>
                        </li>
                        <li class="dropdown-submenu dropend">
                          <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">
                            Quiz
                            <span class="badge bg-primary ms-1">New</span>
                          </a>
                          <ul class="dropdown-menu">
                            <li>
                              <a class="dropdown-item" href="student-quiz.html">Quiz</a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="student-quiz-attempt.html">Attempt</a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="student-quiz-start.html">Start</a>
                            </li>
                            <li>
                              <a class="dropdown-item" href="student-quiz-result.html">Result</a>
                            </li>
                          </ul>
                        </li>
                      </ul>
                    </li>
                    <li class="dropdown-submenu dropend">
                      <a class="dropdown-item dropdown-list-group-item dropdown-toggle" href="#">Admin</a>
                      <ul class="dropdown-menu">
                        <li class="text-wrap">
                          <h5 class="dropdown-header text-dark">Master Admin</h5>
                          <p class="dropdown-text mb-0">Master admin dashboard to manage courses, user, site setting , and work with amazing apps.</p>
                        </li>
                        <li>
                          <hr class="mx-3" />
                        </li>
                        <li class="px-3 d-grid">
                          <a href="dashboard/admin-dashboard.html" class="btn btn-sm btn-primary">Go to Dashboard</a>
                        </li>
                      </ul>
                    </li>
                    <li>
                      <hr class="mx-3" />
                    </li>
                    <li>
                      <a class="dropdown-item" href="sign-in.html">Sign In</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="sign-up.html">Sign Up</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="forget-password.html">Forgot Password</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="profile-edit.html">Edit Profile</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="security.html">Security</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="social-profile.html">Social Profiles</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="notifications.html">Notifications</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="profile-privacy.html">Privacy Settings</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="delete-profile.html">Delete Profile</a>
                    </li>
                    <li>
                      <a class="dropdown-item" href="linked-accounts.html">Linked Accounts</a>
                    </li>
                  </ul>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fe fe-more-horizontal"></i>
                  </a>
                  <div class="dropdown-menu dropdown-menu-md" aria-labelledby="navbarDropdown">
                    <div class="list-group">
                      <a class="list-group-item list-group-item-action border-0" href="../docs/index.html">
                        <div class="d-flex align-items-center">
                          <i class="fe fe-file-text fs-3 text-primary"></i>
                          <div class="ms-3">
                            <h5 class="mb-0">Documentations</h5>
                            <p class="mb-0 fs-6">Browse the all documentation</p>
                          </div>
                        </div>
                      </a>
                      <a class="list-group-item list-group-item-action border-0" href="../docs/bootstrap-5-snippets.html">
                        <div class="d-flex align-items-center">
                          <i class="bi bi-files fs-3 text-primary"></i>
                          <div class="ms-3">
                            <h5 class="mb-0">Snippet</h5>
                            <p class="mb-0 fs-6">Bunch of Snippet</p>
                          </div>
                        </div>
                      </a>
                      <a class="list-group-item list-group-item-action border-0" href="../docs/changelog.html">
                        <div class="d-flex align-items-center">
                          <i class="fe fe-layers fs-3 text-primary"></i>
                          <div class="ms-3">
                            <h5 class="mb-0">
                              Changelog
                              <span class="text-primary ms-1" id="changelog"></span>
                            </h5>
                            <p class="mb-0 fs-6">See what's new</p>
                          </div>
                        </div>
                      </a>
                      <a class="list-group-item list-group-item-action border-0" href="https://geeksui.codescandy.com/geeks-rtl/" target="_blank">
                        <div class="d-flex align-items-center">
                          <i class="fe fe-toggle-right fs-3 text-primary"></i>
                          <div class="ms-3">
                            <h5 class="mb-0">RTL demo</h5>
                            <p class="mb-0 fs-6">RTL Pages</p>
                          </div>
                        </div>
                      </a>
                    </div>
                  </div>
                </li>
              </ul>
              <form class="mt-3 mt-lg-0 ms-lg-3 d-flex align-items-center">
                <span class="position-absolute ps-3 search-icon">
                  <i class="fe fe-search"></i>
                </span>
                <label for="search" class="visually-hidden"></label>
                <input type="search" id="search" class="form-control ps-6" placeholder="Search Courses" />
              </form>
            </div>
          </div>
        </nav>
  
        <!-- Page header -->
        <section class="py-8">
          <div class="container">
            <div class="row">
              <div class="offset-xl-2 col-xl-8 offset-lg-1 col-lg-10 col-md-12 col-12">
                <div class="text-center mb-5">
                  <h1 class="display-2 fw-bold">Geeks Newsroom</h1>
                  <p class="lead">Our features, journey, tips and us being us. Lorem ipsum dolor sit amet, accumsan in, tempor dictum neque.</p>
                </div>
                <!-- Form -->
                <form class="row px-md-8 mx-md-8 needs-validation" novalidate>
                  <div class="mb-3 col ps-0 ms-2 ms-md-0">
                    <input type="email" class="form-control" placeholder="Email Address" required />
                    <div class="invalid-feedback">Please valid a Email Address</div>
                  </div>
                  <div class="mb-3 col-auto ps-0">
                    <button class="btn btn-primary" type="submit">Submit</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </section>
        <!-- Content -->
        <section class="pb-8">
          <div class="container">
            <div class="row">
              <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                <!-- Flush Nav -->
                <div class="flush-nav">
                  <nav class="nav">
                    <a class="nav-link active ps-0" href="#">All</a>
                    <a class="nav-link" href="blog-category.html">Courses</a>
                    <a class="nav-link" href="blog-category.html">Workshop</a>
                    <a class="nav-link" href="blog-category.html">Tutorial</a>
                    <a class="nav-link" href="blog-category.html">Company</a>
                  </nav>
                </div>
              </div>
              <div class="col-xl-12 col-lg-12 col-md-12 col-12">
                <!-- Card -->
                <div class="card mb-4 shadow-lg card-lift">
                  <div class="row g-0">
                    <!-- Image -->
                    <a href="blog-single.html" class="col-lg-8 col-md-12 col-12 bg-cover img-left-rounded" style="background-image: url(../assets/images/blog/blogpost-2.jpg)">
                      <img src="../assets/images/blog/blogpost-2.jpg" class="img-fluid d-lg-none invisible" alt="blogpost " />
                    </a>
                    <div class="col-lg-4 col-md-12 col-12">
                      <!-- Card body -->
                      <div class="card-body">
                        <a href="#" class="fs-5 mb-3 fw-semibold d-block">Courses</a>
                        <h1 class="mb-2 mb-lg-4"><a href="blog-single.html" class="text-inherit">Getting started the Web App JavaScript in 2020</a></h1>
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
                          <a href="blog-single.html">
                            <img src="../assets/images/blog/blogpost-3.jpg" class="card-img-top" alt="blogpost " />
                          </a>
                          <div class="card-body">
                            <a href="#" class="fs-5 mb-2 fw-semibold d-block text-success">Bài viết</a>
                            <h3><a href="blog-single.html" class="blog-title__text text-inherit">${blog.title}</a></h3>
                            <p class="blog-content__text">${blog.content}</p>
                            <div class="row align-items-center g-0 mt-4">
                              <div class="col-auto">
                                <img src="../assets/images/avatar/avatar-7.jpg" alt="avatar" class="rounded-circle avatar-sm me-2" />
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
              <div class="col-xl-12 col-lg-12 col-md-12 col-12 text-center mt-4">
                <a href="#" class="btn btn-primary">
                  <div class="spinner-border spinner-border-sm me-2" role="status">
                    <span class="visually-hidden">Loading...</span>
                  </div>
                  Load More
                </a>
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
