<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<body>
	<div class="header">
		<!-- navbar -->
	</div>
	<!-- Container fluid -->
	<section class="container-fluid p-4">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-12">
				<!-- Page header -->
				<div class="border-bottom pb-3 mb-3">
					<div>
						<h1 class="mb-1 h2 fw-bold">Order</h1>
						<!-- Breadcrumb -->
						<nav aria-label="breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="admin-dashboard.html">Dashboard</a></li>

								<li class="breadcrumb-item active" aria-current="page">Order</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<!-- basic table -->
			<div class="col-md-12 col-12 mb-5">
				<div class="card">
					<!-- card header  -->
					<div class="card-header">
						<h4 class="mb-1">Order</h4>
						<p class="mb-0">Order</p>
					</div>
					<!-- table  -->
					<div class="card-body">
						<div class="table-card">
							<table id="dataTableBasic" class="table table-hover"
								style="width: 100%">
								<thead class="table-light">
									<tr>
										<th>Order</th>
										<th>Customer</th>
										<th>Items</th>
										<th>Payment</th>
										<th>Date</th>
										<th>Total</th>
									</tr>

								</thead>
								<tbody>
									<c:forEach var="i" items="${list}">
										<tr>
											<td><a href="#" class="fw-semibold">${i.paymentId}</a></td>
											<td>${i.users.account.userName }</td>
											<td>1 Items</td>
											<td><span class="badge text-success bg-light-success">Paid</span></td>
											<td>${i.dateBuy}</td>
											<td>${i.cost}</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row">
			<!-- basic table -->
			<div class="col-md-12 col-12 mb-5">
				<div class="card">
					<!-- card header  -->

				</div>
			</div>
		</div>
	</section>
</body>

