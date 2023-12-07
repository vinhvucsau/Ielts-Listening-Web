<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<%@ page import="javax.servlet.jsp.PageContext"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="../../assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css"
	rel="stylesheet" />
<link
	href="../../assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css"
	rel="stylesheet" />
<!-- Required meta tags -->
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Codescandy" />

<!-- Favicon icon-->
<link rel="shortcut icon" type="image/x-icon"
	href="../../assets/images/favicon/favicon.ico" />

<!-- darkmode js -->
<script src="../../assets/js/vendors/darkMode.js"></script>

<!-- Libs CSS -->
<link href="../../assets/fonts/feather/feather.css" rel="stylesheet" />
<link
	href="../../assets/libs/bootstrap-icons/font/bootstrap-icons.min.css"
	rel="stylesheet" />
<link href="../../assets/libs/simplebar/dist/simplebar.min.css"
	rel="stylesheet" />

<!-- Theme CSS -->
<link rel="stylesheet" href="../../assets/css/theme.min.css">

<link rel="canonical" href="datatables.html" />

<title>Datatables | Geeks - Academy Admin Template</title>
</head>
<body>
	<style>
.info-user:hover {
	cursor: pointer;
}
</style>
	<section class="container-fluid p-4">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-12">
				<!-- Page header -->
				<div class="border-bottom pb-3 mb-3">
					<div>
						<h1 class="mb-1 h2 fw-bold">Data Tables</h1>
						<!-- Breadcrumb -->
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="admin-dashboard.html">Dashboard</a>
								</li>

								<li class="breadcrumb-item active" aria-current="page">Data
									Tables</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>



		<section class="container-fluid p-4">



			<div class="row">
				<!-- basic table -->
				<div class="col-md-12 col-12 mb-5">
					<div class="card">
						<!-- card header  -->
						<div class="card-header">
							<h4 class="mb-1">Data Table Basic</h4>
							<p class="mb-0">DataTables is a plug-in for the jQuery
								Javascript library. It is a highly flexible tool, built upon the
								foundations of progressive enhancement, that adds all of these
								advanced features to any HTML table.</p>
						</div>
						<!-- table  -->
						<div class="card-body">
							<div class="table-card">
								<table id="dataTableBasic" class="table table-hover"
									style="width: 100%">
									<thead class="table-light">
										<tr>
											<th>Name</th>
<<<<<<< HEAD
											<th>User Name</th>
=======
											<th>Sex</th>
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
											<th>Date Of Birth</th>
											<th>Email</th>
											<th>Phone Number</th>
											<th>Address</th>
										</tr>
									</thead>
									<tbody>
<<<<<<< HEAD
										<c:forEach var="i" items="${users}">
											<tr
												onclick="location.href='/Ielts-listening2/admin/capnhattaikhoan?userId=${i.userId}'">
												<td>${i.name}</td>
												<td>${i.account.userName}</td>
=======
										<c:forEach var="i" items="${currentUser}">
											<tr
												onclick="location.href='/Ielts-listening2/admin/capnhattaikhoan?userId=${i.userId}'">
												<td>${i.name}</td>
												<td>${i.sex}</td>
>>>>>>> c7d9e9832330625728f66c486f5d5cbcb7e5b7a8
												<td>${i.dateOfBirth}</td>
												<td>${i.email}</td>
												<td>${i.phoneNumber}</td>
												<td>${i.address}</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>

		</section>



	</section>



	<script src="../../assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
	<script src="../../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../../assets/libs/simplebar/dist/simplebar.min.js"></script>

	<!-- Theme JS -->
	<script src="../assets/js/theme.min.js"></script>

	<script src="../assets/js/vendors/jquery.min.js"></script>
	<script src="../assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
	<script
		src="../assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
	<script
		src="../assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="../assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
	<script
		src="../assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="../assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
	<script
		src="../assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
	<script
		src="../assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
	<script
		src="../assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
	<script src="../assets/libs/pdfmake/build/pdfmake.min.js"></script>
	<script src="../assets/js/vendors/datatables.js"></script>


</body>
</html>