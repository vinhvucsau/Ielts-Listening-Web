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
<link rel="shortcut icon" type="image/x-icon"
	href="../assets/images/favicon/favicon.ico" />

<!-- darkmode js -->
<script src="../assets/js/vendors/darkMode.js"></script>

<!-- Libs CSS -->
<link href="../assets/fonts/feather/feather.css" rel="stylesheet" />
<link
	href="../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css"
	rel="stylesheet" />
<link href="../assets/libs/simplebar/dist/simplebar.min.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link rel="stylesheet" href="../assets/css/theme.min.css">

<link rel="canonical" href="admin-cms-post.html">
<title>Bài viết</title>



</head>

<body class="bg-white">

	<!-- Container fluid -->
	<section class="container-fluid">
		<div class="row mt-4">
            <!-- Page Header -->
            <div class="col-lg-12 col-md-12 col-12">
                <div class="border-bottom pb-3 mb-3 d-flex align-items-center justify-content-between">
                    <div>
                        <h1 class="mb-1 h2 fw-bold">Bài viết</h1>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="<c:url value='/admin/dashboard'/>">Trang chủ</a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Bài viết</li>
                            </ol>
                        </nav>
                    </div>
                    <div>
                        <a href="<c:url value='/user/add-blog'/>" class="btn btn-primary">Thêm bài viết</a>
                    </div>
                </div>
            </div>
        </div>

		<div class="row">
			<div class="col-lg-12 col-md-12 col-12">
				<!-- Card -->
				<div class="card rounded-3">
					<!-- Card Header -->
					<div class="card-header p-0">
						<ul class="nav nav-lb-tab border-bottom-0" id="tab" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="all-post-tab" data-bs-toggle="pill" href="#all-post"
								role="tab" aria-controls="all-post" aria-selected="true">Tất
									cả</a></li>
							<li class="nav-item"><a class="nav-link" id="published-tab"
								data-bs-toggle="pill" href="#published" role="tab"
								aria-controls="published" aria-selected="false">Đã duyệt</a></li>
							<li class="nav-item"><a class="nav-link" id="scheduled-tab"
								data-bs-toggle="pill" href="#scheduled" role="tab"
								aria-controls="scheduled" aria-selected="false">Chờ duyệt</a></li>
							<li class="nav-item"><a class="nav-link" id="draft-tab"
								data-bs-toggle="pill" href="#draft" role="tab"
								aria-controls="draft" aria-selected="false">Bản nháp</a></li>
							<li class="nav-item"><a class="nav-link" id="deleted-tab"
								data-bs-toggle="pill" href="#deleted" role="tab"
								aria-controls="deleted" aria-selected="false">Thùng rác</a></li>
						</ul>
					</div>
					<div class="p-4 row">
						<!-- Form -->
						<!-- <form class="d-flex align-items-center col-12 col-md-8 col-lg-3">
                            <span class="position-absolute ps-3 search-icon">
                                <i class="fe fe-search"></i>
                            </span>
                            <input type="search" class="form-control ps-6" placeholder="Search Post" >
                        </form> -->
					</div>
					<div>
						<div class="tab-content" id="tabContent">
							<!-- all -->
							<div class="tab-pane fade show active" id="all-post"
								role="tabpanel" aria-labelledby="all-post-tab">
								<div class="container table-responsive">
									<!-- Table -->
									<table id=""
										class="table-pag table mb-0 text-nowrap table-centered table-hover table-with-checkbox table-centered table-hover">
										<!-- Table Head -->
										<thead class="table-light">
											<tr>
												<th>STT</th>
												<th>Bài viết</th>
												<th>Mã</th>
												<th>Ngày tạo</th>
												<th>Tác giả</th>
												<th>Trạng thái</th>
												<th></th>
											</tr>
										</thead>
										<!-- Table body -->
										<tbody>
											<c:forEach var="blog" items="${listBlog}"
												varStatus="thisblog">
												<c:set var="count" scope="session" value="${thisblog.count}" />
												<c:choose>
													<c:when test="${blog.users.userId == user.userId}">
														<tr class="blog-item" data-value="${blog.status}">
															<td class="blog-ordernum">${count}</td>
															<td>
																<h5 class="blog-title mb-0">
																	<a href="<c:url value='/user/blog-content?id=${blog.blogId}'/>" class="blog-title__link text-inherit">${blog.title}</a>
																</h5>
															</td>
															<td class="blog-id">${blog.blogId}</td>
															<td class="blog-createdDate">${blog.createdDate}</td>

															<td>
																<div class="blog-user d-flex align-items-center"
																	value="${user.account.role}">
																	<img
																		src="<c:url value='/image?fname=${folder}/${user.image}'/>"
																		alt=""
																		class="blog-user__img rounded-circle avatar-xs me-2">
																	<h5 class="blog-user__name mb-0">${user.name}</h5>
																</div>
															</td>

															<c:choose>
																<c:when test="${blog.status == 0}">
																	<td><span
																		class="blog-status badge-dot bg-warning me-1 d-inline-block align-middle"></span>
																		Bản nháp</td>
																	<td class="blog-setup" value="${blog.status}"><span
																		class="dropdown dropstart"> <a
																			class="blog-setup__btn btn-icon btn btn-ghost btn-sm rounded-circle"
																			href="#" role="button" id="courseDropdown1"
																			data-bs-toggle="dropdown" data-bs-offset="-20,20"
																			aria-expanded="false" value="${blog.status}"> <i
																				class="fe fe-more-vertical" value="${blog.status}"></i>
																		</a> <span class="dropdown-menu"
																			aria-labelledby="courseDropdown1"> <span
																				class="dropdown-header">Thiết lập</span> <a
																				class="blog-waiting-btn dropdown-item" href="#"
																				value="${blog.blogId}"> <i
																					class="fe fe-toggle-left dropdown-item-icon"></i>
																					Đăng duyệt
																			</a> <a class="blog-edit-btn dropdown-item" href=""
																				value="${blog.blogId}"> <i
																					class="fe fe-edit dropdown-item-icon"></i> Chỉnh
																					sửa
																			</a> <a class="blog-trash-btn dropdown-item" href="#"
																				value="${blog.blogId}"> <i
																					class="fe fe-trash dropdown-item-icon"></i> Thùng
																					rác
																			</a>
																		</span>
																	</span></td>
																</c:when>

																<c:when test="${blog.status == 1}">
																	<td><span
																		class="blog-status badge-dot bg-success me-1 d-inline-block align-middle"></span>
																		Đã đăng</td>

																	<td class="blog-setup" value="${blog.status}"><span
																		class="dropdown dropstart"> <a
																			class="blog-setup__btn btn-icon btn btn-ghost btn-sm rounded-circle"
																			href="#" role="button" id="courseDropdown1"
																			data-bs-toggle="dropdown" data-bs-offset="-20,20"
																			aria-expanded="false" value="${blog.status}"> <i
																				class="fe fe-more-vertical" value="${blog.status}"></i>
																		</a> <span class="dropdown-menu"
																			aria-labelledby="courseDropdown1"> <span
																				class="dropdown-header">Thiết lập</span>
																		</span>
																	</span></td>
																</c:when>

																<c:when test="${blog.status == 2}">
																	<td><span
																		class="blog-status badge-dot bg-danger me-1 d-inline-block align-middle"></span>
																		Thùng rác</td>
																	<td class="blog-setup" value="${blog.status}"><span
																		class="dropdown dropstart"> <a
																			class="blog-setup__btn btn-icon btn btn-ghost btn-sm rounded-circle"
																			href="#" role="button" id="courseDropdown1"
																			data-bs-toggle="dropdown" data-bs-offset="-20,20"
																			aria-expanded="false" value="${blog.status}"> <i
																				class="fe fe-more-vertical" value="${blog.status}"></i>
																		</a> <span class="dropdown-menu"
																			aria-labelledby="courseDropdown1"> <span
																				class="dropdown-header">Thiết lập</span> <a
																				class="blog-rest-btn dropdown-item" href="#"
																				value="${blog.blogId}"> <i
																					class="fe fe-toggle-left dropdown-item-icon"></i>
																					Khôi phục
																			</a>
																		</span>
																	</span></td>
																</c:when>

																<c:when test="${blog.status == 3}">
																	<td><span
																		class="blog-status badge-dot bg-info me-1 d-inline-block align-middle"></span>
																		Chờ duyệt</td>
																	<td class="blog-setup" value="${blog.status}"><span
																		class="dropdown dropstart"> <a
																			class="blog-setup__btn btn-icon btn btn-ghost btn-sm rounded-circle"
																			href="#" role="button" id="courseDropdown1"
																			data-bs-toggle="dropdown" data-bs-offset="-20,20"
																			aria-expanded="false" value="${blog.status}"> <i
																				class="fe fe-more-vertical" value="${blog.status}"></i>
																		</a> <span class="dropdown-menu"
																			aria-labelledby="courseDropdown1"> <span
																				class="dropdown-header">Thiết lập</span> <a
																				class="blog-abort-btn dropdown-item" href="#"
																				value="${blog.blogId}"> <i
																					class="fe fe-trash dropdown-item-icon"></i> Hủy bỏ
																			</a>
																		</span>
																	</span></td>
																</c:when>
															</c:choose>

														</tr>
													</c:when>
												</c:choose>

											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>

							<!-- 1: published -->
							<div class="tab-pane fade" id="published" role="tabpanel"
								aria-labelledby="published-tab">
								<div class="container table-responsive">
									<!-- Table -->
									<table id=""
										class="table-pag table mb-0 text-nowrap table-centered table-hover table-with-checkbox table-centered table-hover">
										<!-- Table Head -->
										<thead class="table-light">
											<tr>
												<th>STT</th>
												<th>Bài viết</th>
												<th>Mã</th>
												<th>Ngày tạo</th>
												<th>Tác giả</th>
												<th>Trạng thái</th>
												<th></th>
											</tr>
										</thead>
										<!-- Table body -->
										<tbody>
											<c:forEach var="blog" items="${listBlog}"
												varStatus="thisblog">
												<c:set var="count" scope="session" value="${thisblog.count}" />
												<c:choose>
													<c:when test="${blog.users.userId == user.userId && blog.status == 1}">
														<tr class="blog-item" data-value="${blog.status}">
															<td class="blog-ordernum">${count}</td>
															<td>
																<h5 class="blog-title mb-0">
																	<a href="<c:url value='/user/blog-content?id=${blog.blogId}'/>" class="blog-title__link text-inherit">${blog.title}</a>
																</h5>
															</td>
															<td class="blog-id">${blog.blogId}</td>
															<td class="blog-createdDate">${blog.createdDate}</td>

															<td>
																<div class="blog-user d-flex align-items-center"
																	value="${user.account.role}">
																	<img
																		src="<c:url value='/image?fname=${folder}/${user.image}'/>"
																		alt=""
																		class="blog-user__img rounded-circle avatar-xs me-2">
																	<h5 class="blog-user__name mb-0">${user.name}</h5>
																</div>
															</td>

                                                            <td><span
                                                                class="blog-status badge-dot bg-success me-1 d-inline-block align-middle"></span>
                                                                Đã đăng</td>

                                                            <td class="blog-setup" value="${blog.status}"><span
                                                                class="dropdown dropstart"> <a
                                                                    class="blog-setup__btn btn-icon btn btn-ghost btn-sm rounded-circle"
                                                                    href="#" role="button" id="courseDropdown1"
                                                                    data-bs-toggle="dropdown" data-bs-offset="-20,20"
                                                                    aria-expanded="false" value="${blog.status}"> <i
                                                                        class="fe fe-more-vertical" value="${blog.status}"></i>
                                                                </a> <span class="dropdown-menu"
                                                                    aria-labelledby="courseDropdown1"> <span
                                                                        class="dropdown-header">Thiết lập</span>
                                                                </span>
                                                            </span></td>

														</tr>
													</c:when>
												</c:choose>

											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>

                            <!-- 3: waiting -->
                            <div class="tab-pane fade" id="scheduled" role="tabpanel" aria-labelledby="scheduled-tab">
                                <div class="container table-responsive">
									<!-- Table -->
									<table id=""
										class="table-pag table mb-0 text-nowrap table-centered table-hover table-with-checkbox table-centered table-hover">
										<!-- Table Head -->
										<thead class="table-light">
											<tr>
												<th>STT</th>
												<th>Bài viết</th>
												<th>Mã</th>
												<th>Ngày tạo</th>
												<th>Tác giả</th>
												<th>Trạng thái</th>
												<th></th>
											</tr>
										</thead>
										<!-- Table body -->
										<tbody>
											<c:forEach var="blog" items="${listBlog}"
												varStatus="thisblog">
												<c:set var="count" scope="session" value="${thisblog.count}" />
												<c:choose>
													<c:when test="${blog.users.userId == user.userId && blog.status == 3}">
														<tr class="blog-item" data-value="${blog.status}">
															<td class="blog-ordernum">${count}</td>
															<td>
																<h5 class="blog-title mb-0">
																	<a href="<c:url value='/user/blog-content?id=${blog.blogId}'/>" class="blog-title__link text-inherit">${blog.title}</a>
																</h5>
															</td>
															<td class="blog-id">${blog.blogId}</td>
															<td class="blog-createdDate">${blog.createdDate}</td>

															<td>
																<div class="blog-user d-flex align-items-center"
																	value="${user.account.role}">
																	<img
																		src="<c:url value='/image?fname=${folder}/${user.image}'/>"
																		alt=""
																		class="blog-user__img rounded-circle avatar-xs me-2">
																	<h5 class="blog-user__name mb-0">${user.name}</h5>
																</div>
															</td>

                                                            <td><span
                                                                class="blog-status badge-dot bg-info me-1 d-inline-block align-middle"></span>
                                                                Chờ duyệt</td>
                                                            <td class="blog-setup" value="${blog.status}"><span
                                                                class="dropdown dropstart"> <a
                                                                    class="blog-setup__btn btn-icon btn btn-ghost btn-sm rounded-circle"
                                                                    href="#" role="button" id="courseDropdown1"
                                                                    data-bs-toggle="dropdown" data-bs-offset="-20,20"
                                                                    aria-expanded="false" value="${blog.status}"> <i
                                                                        class="fe fe-more-vertical" value="${blog.status}"></i>
                                                                </a> <span class="dropdown-menu"
                                                                    aria-labelledby="courseDropdown1"> <span
                                                                        class="dropdown-header">Thiết lập</span> <a
                                                                        class="blog-abort-btn dropdown-item" href="#"
                                                                        value="${blog.blogId}"> <i
                                                                            class="fe fe-trash dropdown-item-icon"></i> Hủy bỏ
                                                                    </a>
                                                                </span>
                                                            </span></td>
														</tr>
													</c:when>
												</c:choose>

											</c:forEach>
										</tbody>
									</table>
								</div>
                            </div>

                             <!-- 0: drafts -->
                            <div class="tab-pane fade" id="draft" role="tabpanel" aria-labelledby="draft-tab">
                                <div class="container table-responsive">
									<!-- Table -->
									<table id=""
										class="table-pag table mb-0 text-nowrap table-centered table-hover table-with-checkbox table-centered table-hover">
										<!-- Table Head -->
										<thead class="table-light">
											<tr>
												<th>STT</th>
												<th>Bài viết</th>
												<th>Mã</th>
												<th>Ngày tạo</th>
												<th>Tác giả</th>
												<th>Trạng thái</th>
												<th></th>
											</tr>
										</thead>
										<!-- Table body -->
										<tbody>
											<c:forEach var="blog" items="${listBlog}"
												varStatus="thisblog">
												<c:set var="count" scope="session" value="${thisblog.count}" />
												<c:choose>
													<c:when test="${blog.users.userId == user.userId  && blog.status == 0}">
														<tr class="blog-item" data-value="${blog.status}">
															<td class="blog-ordernum">${count}</td>
															<td>
																<h5 class="blog-title mb-0">
																	<a href="<c:url value='/user/blog-content?id=${blog.blogId}'/>" class="blog-title__link text-inherit">${blog.title}</a>
																</h5>
															</td>
															<td class="blog-id">${blog.blogId}</td>
															<td class="blog-createdDate">${blog.createdDate}</td>

															<td>
																<div class="blog-user d-flex align-items-center"
																	value="${user.account.role}">
																	<img
																		src="<c:url value='/image?fname=${folder}/${user.image}'/>"
																		alt=""
																		class="blog-user__img rounded-circle avatar-xs me-2">
																	<h5 class="blog-user__name mb-0">${user.name}</h5>
																</div>
															</td>
                                                            <td>
                                                                <span class="blog-status badge-dot bg-warning me-1 d-inline-block align-middle"></span>
                                                                Bản nháp
                                                            </td>
                                                            <td class="blog-setup" value="${blog.status}"><span
                                                                class="dropdown dropstart"> <a
                                                                    class="blog-setup__btn btn-icon btn btn-ghost btn-sm rounded-circle"
                                                                    href="#" role="button" id="courseDropdown1"
                                                                    data-bs-toggle="dropdown" data-bs-offset="-20,20"
                                                                    aria-expanded="false" value="${blog.status}"> <i
                                                                        class="fe fe-more-vertical" value="${blog.status}"></i>
                                                                </a> <span class="dropdown-menu"
                                                                    aria-labelledby="courseDropdown1"> <span
                                                                        class="dropdown-header">Thiết lập</span> <a
                                                                        class="blog-waiting-btn dropdown-item" href="#"
                                                                        value="${blog.blogId}"> <i
                                                                            class="fe fe-toggle-left dropdown-item-icon"></i>
                                                                            Đăng duyệt
                                                                    </a> <a class="blog-edit-btn dropdown-item" href=""
                                                                        value="${blog.blogId}"> <i
                                                                            class="fe fe-edit dropdown-item-icon"></i> Chỉnh
                                                                            sửa
                                                                    </a> <a class="blog-trash-btn dropdown-item" href="#"
                                                                        value="${blog.blogId}"> <i
                                                                            class="fe fe-trash dropdown-item-icon"></i> Thùng
                                                                            rác
                                                                    </a>
                                                                </span>
                                                            </span></td>

														</tr>
													</c:when>
												</c:choose>

											</c:forEach>
										</tbody>
									</table>
								</div>
                            </div>

                            <!-- 2: trash -->
                            <div class="tab-pane fade" id="deleted" role="tabpanel" aria-labelledby="deleted-tab">
                                <div class="container table-responsive">
									<!-- Table -->
									<table id=""
										class="table-pag table mb-0 text-nowrap table-centered table-hover table-with-checkbox table-centered table-hover">
										<!-- Table Head -->
										<thead class="table-light">
											<tr>
												<th>STT</th>
												<th>Bài viết</th>
												<th>Mã</th>
												<th>Ngày tạo</th>
												<th>Tác giả</th>
												<th>Trạng thái</th>
												<th></th>
											</tr>
										</thead>
										<!-- Table body -->
										<tbody>
											<c:forEach var="blog" items="${listBlog}"
												varStatus="thisblog">
												<c:set var="count" scope="session" value="${thisblog.count}" />
												<c:choose>
													<c:when test="${blog.users.userId == user.userId  && blog.status == 2}">
														<tr class="blog-item" data-value="${blog.status}">
															<td class="blog-ordernum">${count}</td>
															<td>
																<h5 class="blog-title mb-0">
																	<a href="<c:url value='/user/blog-content?id=${blog.blogId}'/>" class="blog-title__link text-inherit">${blog.title}</a>
																</h5>
															</td>
															<td class="blog-id">${blog.blogId}</td>
															<td class="blog-createdDate">${blog.createdDate}</td>

															<td>
																<div class="blog-user d-flex align-items-center"
																	value="${user.account.role}">
																	<img
																		src="<c:url value='/image?fname=${folder}/${user.image}'/>"
																		alt=""
																		class="blog-user__img rounded-circle avatar-xs me-2">
																	<h5 class="blog-user__name mb-0">${user.name}</h5>
																</div>
															</td>

                                                            <td><span
                                                                class="blog-status badge-dot bg-danger me-1 d-inline-block align-middle"></span>
                                                                Thùng rác</td>
                                                            <td class="blog-setup" value="${blog.status}"><span
                                                                class="dropdown dropstart"> <a
                                                                    class="blog-setup__btn btn-icon btn btn-ghost btn-sm rounded-circle"
                                                                    href="#" role="button" id="courseDropdown1"
                                                                    data-bs-toggle="dropdown" data-bs-offset="-20,20"
                                                                    aria-expanded="false" value="${blog.status}"> <i
                                                                        class="fe fe-more-vertical" value="${blog.status}"></i>
                                                                </a> <span class="dropdown-menu"
                                                                    aria-labelledby="courseDropdown1"> <span
                                                                        class="dropdown-header">Thiết lập</span> <a
                                                                        class="blog-rest-btn dropdown-item" href="#"
                                                                        value="${blog.blogId}"> <i
                                                                            class="fe fe-toggle-left dropdown-item-icon"></i>
                                                                            Khôi phục
                                                                    </a>
                                                                </span>
                                                            </span></td>

														</tr>
													</c:when>
												</c:choose>

											</c:forEach>
										</tbody>
									</table>
								</div>
                            </div>
						</div>

					</div>

				</div>
			</div>
		</div>
	</section>

	<!-- Scroll top -->
	<div class="btn-scroll-top">
		<svg class="progress-square svg-content" width="100%" height="100%"
			viewBox="0 0 40 40">
		<path
				d="M8 1H32C35.866 1 39 4.13401 39 8V32C39 35.866 35.866 39 32 39H8C4.13401 39 1 35.866 1 32V8C1 4.13401 4.13401 1 8 1Z" />
		</svg>
	</div>

	<!-- My script -->
	<script>
        $(document).ready(function() {
            
            $('.dropdown-item').hover(function(e){
                console.log(e.target);
                let id = e.target.getAttribute("value");
                var urlAction;
                if($(this).hasClass('blog-edit-btn')){ //edit btn 
                    urlAction = "<c:url value='/user/edit-blog?id="+ String(id)+ "'/>";
	                e.target.setAttribute("href", urlAction);
                    return;
                } else if($(this).hasClass('blog-publish-btn')){ //publish btn 
                    urlAction = "<c:url value='/user/update-blog-status?id="+ String(id)+ "&status=" +String(1) + "'/>";
	                e.target.setAttribute("href", urlAction);
                    return;
                } else if($(this).hasClass('blog-trash-btn')){ //trash btn 
                    urlAction = "<c:url value='/user/update-blog-status?id="+ String(id)+ "&status=" +String(2) + "'/>";
	                e.target.setAttribute("href", urlAction);
                    return;
                } else if($(this).hasClass('blog-drafts-btn')){ //drafts btn 
                    urlAction = "<c:url value='/user/update-blog-status?id="+ String(id)+ "&status=" +String(0) + "'/>";
	                e.target.setAttribute("href", urlAction);
                    return;
                } else if($(this).hasClass('blog-abort-btn')){ //abort btn 
                    urlAction = "<c:url value='/user/update-blog-status?id="+ String(id)+ "&status=" +String(0) + "'/>";
	                e.target.setAttribute("href", urlAction);
                    return;
                } else if($(this).hasClass('blog-waiting-btn')){ //waiting btn 
                    urlAction = "<c:url value='/user/update-blog-status?id="+ String(id)+ "&status=" +String(3) + "'/>";
	                e.target.setAttribute("href", urlAction);
                    return;
                } else if($(this).hasClass('blog-rest-btn')){ //reset btn 
                    urlAction = "<c:url value='/user/update-blog-status?id="+ String(id)+ "&status=" +String(0) + "'/>";
	                e.target.setAttribute("href", urlAction);
                    return;
                }

            });
        });
	</script>
	<!-- Libs JS -->
    <script src="../../assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
	<script src="../../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../../assets/libs/simplebar/dist/simplebar.min.js"></script>

	<!-- Theme JS -->
	<script src="../../assets/js/theme.min.js"></script>

</body>
</html>
