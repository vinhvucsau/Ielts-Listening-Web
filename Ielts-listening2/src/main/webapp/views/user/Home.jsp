<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="tab-content" id="tabContent">
		<!--Tab pane -->
		<div class="tab-pane fade show active" id="courses" role="tabpanel"
			aria-labelledby="courses-tab">
			<div class="table-responsive border-0 overflow-y-hidden">
				<table class="table mb-0 text-nowrap table-centered table-hover">
					<thead class="table-light">
						<tr>
							<th>Courses</th>
							<th>Instructor</th>
							<th>STATUS</th>
							<th>ACTION</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-gatsby.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Revolutionize how
												you build the web...</h4>
											<span>Added on 7 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-7.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Reva Yokk</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-warning me-1 d-inline-block align-middle"></span>
								Pending</td>
							<td><a href="#" class="btn btn-outline-secondary btn-sm">Reject</a>
								<a href="#" class="btn btn-success btn-sm">Approved</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown1" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown1">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-graphql.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Guide to Static
												Sites with Gatsby...</h4>
											<span>Added on 6 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-6.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Brooklyn Simmons</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-warning me-1 d-inline-block align-middle"></span>
								Pending</td>
							<td><a href="#" class="btn btn-outline-secondary btn-sm">Reject</a>
								<a href="#" class="btn btn-success btn-sm">Approved</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown2" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown2">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-html.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">The Modern
												JavaScript Courses ...</h4>
											<span>Added on 5 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-5.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Miston Wilson</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-warning me-1 d-inline-block align-middle"></span>
								Pending</td>
							<td><a href="#" class="btn btn-outline-secondary btn-sm">Reject</a>
								<a href="#" class="btn btn-success btn-sm">Approved</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown3" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown3">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-javascript.jpg"
												alt="" class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Courses JavaScript
												Heading Title ...</h4>
											<span>Added on 5 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-10.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Guy Hawkins</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-success me-1 d-inline-block align-middle"></span>
								Live</td>
							<td><a href="#" class="btn btn-secondary btn-sm">Change
									Status</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown4" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown4">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-node.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Get Start with Node
												Heading Title ...</h4>
											<span>Added on 5 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-3.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Sina Ray</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-success me-1 d-inline-block align-middle"></span>
								Live</td>
							<td><a href="#" class="btn btn-secondary btn-sm">Change
									Status</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown5" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown5">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-laravel.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Get Start with
												Laravel...</h4>
											<span>Added on 5 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-9.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Sobo Rikhan</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-success me-1 d-inline-block align-middle"></span>
								Live</td>
							<td><a href="#" class="btn btn-secondary btn-sm">Change
									Status</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown6" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown6">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-react.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Get Start with
												React...</h4>
											<span>Added on 4 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-2.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">April Noms</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-success me-1 d-inline-block align-middle"></span>
								Live</td>
							<td><a href="#" class="btn btn-secondary btn-sm">Change
									Status</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown7" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown7">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-angular.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Get Start with
												Angular...</h4>
											<span>Added on 3 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-4.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Jacob Jones</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-warning me-1 d-inline-block align-middle"></span>
								Pending</td>
							<td><a href="#" class="btn btn-outline-secondary btn-sm">Reject</a>
								<a href="#" class="btn btn-success btn-sm">Approved</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown8" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown8">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--Tab pane -->
		<div class="tab-pane fade" id="approved" role="tabpanel"
			aria-labelledby="approved-tab">
			<div class="table-responsive border-0 overflow-y-hidden">
				<table class="table mb-0 text-nowrap table-centered table-hover">
					<thead class="table-light">
						<tr>
							<th>Courses</th>
							<th>Instructor</th>
							<th>STATUS</th>
							<th>ACTION</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-javascript.jpg"
												alt="" class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Courses JavaScript
												Heading Title ...</h4>
											<span>Added on 5 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-10.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Guy Hawkins</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-success me-1 d-inline-block align-middle"></span>
								Live</td>
							<td><a href="#" class="btn btn-secondary btn-sm">Change
									Status</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown9" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown9">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-node.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Get Start with Node
												Heading Title ...</h4>
											<span>Added on 5 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-1.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Liston Zebon</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-success me-1 d-inline-block align-middle"></span>
								Live</td>
							<td><a href="#" class="btn btn-secondary btn-sm">Change
									Status</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown10" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown10">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-laravel.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Get Start with
												Laravel...</h4>
											<span>Added on 5 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-4.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Jacob Jones</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-success me-1 d-inline-block align-middle"></span>
								Live</td>
							<td><a href="#" class="btn btn-secondary btn-sm">Change
									Status</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown11" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown11">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-react.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Get Start with
												React...</h4>
											<span>Added on 4 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-6.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Reema Messlemn</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-success me-1 d-inline-block align-middle"></span>
								Live</td>
							<td><a href="#" class="btn btn-secondary btn-sm">Change
									Status</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown12" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown12">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<!--Tab pane -->
		<div class="tab-pane fade" id="pending" role="tabpanel"
			aria-labelledby="pending-tab">
			<div class="table-responsive border-0 overflow-y-hidden">
				<table class="table mb-0 text-nowrap table-centered table-hover">
					<thead class="table-light">
						<tr>
							<th>Courses</th>
							<th>Instructor</th>
							<th>STATUS</th>
							<th>ACTION</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-gatsby.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Revolutionize how
												you build the web...</h4>
											<span>Added on 7 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-7.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Reva Yokk</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-warning me-1 d-inline-block align-middle"></span>
								Pending</td>
							<td><a href="#" class="btn btn-outline-secondary btn-sm">Reject</a>
								<a href="#" class="btn btn-success btn-sm">Approved</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown13" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown13">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-graphql.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Guide to Static
												Sites with Gatsby...</h4>
											<span>Added on 6 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-6.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Brooklyn Simmons</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-warning me-1 d-inline-block align-middle"></span>
								Pending</td>
							<td><a href="#" class="btn btn-outline-secondary btn-sm">Reject</a>
								<a href="#" class="btn btn-success btn-sm">Approved</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown14" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown14">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-html.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">The Modern
												JavaScript Courses ...</h4>
											<span>Added on 5 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-3.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Jenny Wilson</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-warning me-1 d-inline-block align-middle"></span>
								Pending</td>
							<td><a href="#" class="btn btn-outline-secondary btn-sm">Reject</a>
								<a href="#" class="btn btn-success btn-sm">Approved</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown15" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown15">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
						<tr>
							<td><a href="#" class="text-inherit">
									<div class="d-flex align-items-center">
										<div>
											<img src="../assets/images/course/course-angular.jpg" alt=""
												class="img-4by3-lg rounded">
										</div>
										<div class="ms-3">
											<h4 class="mb-1 text-primary-hover">Get Start with
												Angular...</h4>
											<span>Added on 3 July, 2023</span>
										</div>
									</div>
							</a></td>
							<td>
								<div class="d-flex align-items-center">
									<img src="../assets/images/avatar/avatar-4.jpg" alt=""
										class="rounded-circle avatar-xs me-2">
									<h5 class="mb-0">Jacob Jones</h5>
								</div>
							</td>
							<td><span
								class="badge-dot bg-warning me-1 d-inline-block align-middle"></span>
								Pending</td>
							<td><a href="#" class="btn btn-outline-secondary btn-sm">Reject</a>
								<a href="#" class="btn btn-success btn-sm">Approved</a></td>
							<td><span class="dropdown dropstart"> <a
									class="btn-icon btn btn-ghost btn-sm rounded-circle" href="#"
									role="button" id="courseDropdown16" data-bs-toggle="dropdown"
									data-bs-offset="-20,20" aria-expanded="false"> <i
										class="fe fe-more-vertical"></i>
								</a> <span class="dropdown-menu" aria-labelledby="courseDropdown16">
										<span class="dropdown-header">Settings</span> <a
										class="dropdown-item" href="#"> <i
											class="fe fe-x-circle dropdown-item-icon"></i> Reject with
											Feedback
									</a>
								</span>
							</span></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>