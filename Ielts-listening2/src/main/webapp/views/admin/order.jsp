<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!doctype html>
<html lang="en">
    
<!-- Mirrored from geeksui.codescandy.com/geeks/pages/dashboard/datatables.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 25 Nov 2023 06:37:32 GMT -->
<head>
        <link href="../../assets/libs/datatables.net-bs5/css/dataTables.bootstrap5.min.css" rel="stylesheet" />
        <link href="../../assets/libs/datatables.net-buttons-bs5/css/buttons.bootstrap5.min.css" rel="stylesheet" />
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

        <link rel="canonical" href="datatables.html" />

    </head>

    <body>
        <!-- Wrapper -->
        <div id="">
            <!-- navbar vertical -->
 
            <!-- Page Content -->
            <main id="">
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
                                            <li class="breadcrumb-item">
                                                <a href="admin-dashboard.html">Dashboard</a>
                                            </li>

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
                                    <p class="mb-0">
                                        Order
                                    </p>
                                </div>
                                <!-- table  -->
                                <div class="card-body">
                                    <div class="table-card">
                                        <table id="dataTableBasic" class="table table-hover" style="width: 100%">
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
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00016</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00017</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00018</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00019</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00020</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00021</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00022</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00023</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00024</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00025</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00026</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00027</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00028</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00029</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00030</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00031</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00032</a></td>
                                                    <td>New Name32</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2023/12/01</td>
                                                    <td>$3200</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00033</a></td>
                                                    <td>New Name33</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2023/12/02</td>
                                                    <td>$3300</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00034</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00035</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00036</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00037</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00038</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00039</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00040</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00041</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00042</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00043</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00044</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00045</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00046</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00047</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00048</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00049</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00050</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00051</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK00052</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00053</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <a href="#" class="fw-semibold">#GK0005</a></td>
                                                    <td>Anthony Anderson</td>
                                                    <td>1 Items</td>
                                                    <td><span class="badge text-success bg-light-success">Paid</span></td>
                                                    <td>2011/07/25</td>
                                                    <td>$170,750</td>
                                                </tr>
                                                <tr>
                                                    <td><a href="#" class="fw-semibold">#GK00055</a></td>
                                                    <td>Harold Gonzalez</td>
                                                    <td>1 Items</td>
                                                    <td>
                                                        <span class="badge text-danger bg-light-danger">Failed</span>
                                                    </td>
                                                    <td>2011/04/25</td>
                                                    <td>$320,800</td>
                                                </tr>
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
            </main>
        </div>

        <!-- Scripts -->
        <!-- Libs JS -->
<script src="../../assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
<script src="../../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="../../assets/libs/simplebar/dist/simplebar.min.js"></script>

<!-- Theme JS -->
<script src="../../assets/js/theme.min.js"></script>

        <script src="../assets/js/vendors/jquery.min.js"></script>
        <script src="../assets/libs/datatables.net/js/jquery.dataTables.min.js"></script>
        <script src="../assets/libs/datatables.net-bs5/js/dataTables.bootstrap5.min.js"></script>
        <script src="../assets/libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
        <script src="../assets/libs/datatables.net-responsive-bs5/js/responsive.bootstrap5.min.js"></script>
        <script src="../assets/libs/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
        <script src="../assets/libs/datatables.net-buttons-bs5/js/buttons.bootstrap5.min.js"></script>
        <script src="../assets/libs/datatables.net-buttons/js/buttons.html5.min.js"></script>
        <script src="../assets/libs/datatables.net-buttons/js/buttons.flash.min.js"></script>
        <script src="../assets/libs/datatables.net-buttons/js/buttons.print.min.js"></script>
        <script src="../assets/libs/pdfmake/build/pdfmake.min.js"></script>
        <script src="../assets/js/vendors/datatables.js"></script>
    </body>

<!-- Mirrored from geeksui.codescandy.com/geeks/pages/dashboard/datatables.html by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 25 Nov 2023 06:37:37 GMT -->
</html>
