<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<script>
		var arrTopic = [];
		var arrMock = [];
		// Duyệt danh sách Java và thêm dữ liệu vào biến JavaScript
		<c:forEach var="item" items="${topicList}">
			var item = {
				topicId : "${item.topicId}",
				topicName : "${item.topicName}",
				image : "${item.image}",
				description: "${item.description}"
			};
			arrTopic.push(item);
		</c:forEach>
		
		<c:forEach var="item" items="${listMocktest}">
			var itemMock = {
				testId : "${item.testId}",
				testName : "${item.testName}",
				topic : "${item.topicTests.topicId}",
				cost: "${item.cost}",
				description: "${item.description}"
			};
			arrMock.push(itemMock);
		</c:forEach>
	</script>
	<!-- Page content (new) -->

	<main>
        <!-- Page header -->
        <div class="col-lg-12 col-md-12 col-12 pt-lg-8 pb-8">
        	<div class="border-bottom pb-3 mb-3 d-md-flex align-items-center justify-content-between">
            	<div class="mb-3 mb-md-0">
                	<h1 class="mb-1 h2 fw-bold">Courses Category</h1>
                    <!-- Breadcrumb -->
                    <nav aria-label="breadcrumb">
                    	<ol class="breadcrumb">
                        	<li class="breadcrumb-item">
                            	<a href="admin-dashboard.html">Dashboard</a>
                            </li>
                           	<li class="breadcrumb-item">
                            	<a href="#">Courses</a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Courses Category</li>
                    	</ol>
                	</nav>
                </div>
                <div>
                	<a href="#" class="btn btn-primary" onclick="showModel()">Add New Category</a>
            	</div>
        	</div>
        </div>
        <!-- Page content -->
        <section class="pb-8">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-12 col-12 mt-n8 mb-4 mb-lg-0">
                        <!-- Card -->
                        <div class="card rounded-3">
                            <!-- Card header -->
                            <div class="card-header border-bottom-0 p-0">
                                <div>
                                	<div class="card-header border-bottom-0">
                                    <!-- Form -->
                                    <form class="d-flex align-items-center">
                                        <span class="position-absolute ps-3 search-icon">
                                            <i class="fe fe-search"></i>
                                        </span>
                                        <input type="search" class="form-control ps-6" placeholder="Search Course Category">
                                    </form>
                                </div>
                                </div>
                            </div>
                            <!-- Card Body -->
                            <div class="card-body">
                            	<!-- Table -->
                                <div class="table-responsive border-0 overflow-y-hidden">
                                    <table class="table mb-0 text-nowrap table-centered table-hover table-with-checkbox">
                                        <thead class="table-light">
                                            <tr>
                                                <th>
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="checkAll">
                                                        <label class="form-check-label" for="checkAll"></label>
                                                    </div>
                                                </th>
                                                <th>Name</th>
                                                <th>ID</th>
                                                <th>Date Created</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
	                                        <c:forEach var="t" items="${topicList }">
	                                        	<tr class="accordion-toggle collapsed" id="accordion1" data-bs-toggle="collapse" 
	                                            data-bs-parent="#accordion1" data-bs-target="#collapseOne" aria-expanded="false" value="${t.topicId}">
	                                                <td>
	                                                    <div class="form-check">
	                                                        <input type="checkbox" class="form-check-input" id="categoryCheck1">
	                                                        <label class="form-check-label" for="categoryCheck1"></label>
	                                                    </div>
	                                                </td>
	                                                <td>
	                                                    <a href="#" class="text-inherit position-relative">
	                                                        <h5 class="mb-0 text-primary-hover">
	                                                            <i class="fe fe-chevron-down fs-4 me-2 position-absolute ms-n4 mt-1"></i>
	                                                            ${t.topicName}
	                                                        </h5>
	                                                    </a>
	                                                </td>
	                                                <td>${t.topicId}</td>
	                                                <td>${t.createTime}</td>
	                                                <td>
	                                                    <span class="dropdown dropstart">
	                                                        <a
	                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
	                                                            href="#"
	                                                            role="button"
	                                                            id="courseDropdown1"
	                                                            data-bs-toggle="dropdown"
	                                                            data-bs-offset="-20,20"
	                                                            aria-expanded="false">
	                                                            <i class="fe fe-more-vertical"></i>
	                                                        </a>
	                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown1">
	                                                            
	                                                            <a class="dropdown-item" href="#">
	                                                                <i class="fe fe-plus dropdown-item-icon"></i>
	                                                                Thêm đề thi
	                                                            </a>
	                                                            <a class="dropdown-item" href="#">
	                                                                <i class="fe fe-edit dropdown-item-icon"></i>
	                                                                Sửa bộ đề
	                                                            </a>
	                                                            <a class="dropdown-item" href="#">
	                                                                <i class="fe fe-trash dropdown-item-icon"></i>
	                                                                Xóa bộ đề
	                                                            </a>
	                                                        </span>
	                                                    </span>
	                                                </td>
	                                            </tr>
	                                        </c:forEach>
                                            <tr id="collapseOne" class="collapse">
                                                <td>
                                                    <div class="form-check">
                                                        <input type="checkbox" class="form-check-input" id="categoryCheck2">
                                                        <label class="form-check-label" for="categoryCheck2"></label>
                                                    </div>
                                                </td>
                                                <td>
                                                    <a href="#" class="text-inherit">
                                                        <h5 class="mb-0 text-primary-hover ms-3">Child Category</h5>
                                                    </a>
                                                </td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>
                                                    <span class="dropdown dropstart">
                                                        <a
                                                            class="btn-icon btn btn-ghost btn-sm rounded-circle"
                                                            href="#"
                                                            role="button"
                                                            id="courseDropdown2"
                                                            data-bs-toggle="dropdown"
                                                            data-bs-offset="-20,20"
                                                            aria-expanded="false">
                                                            <i class="fe fe-more-vertical"></i>
                                                        </a>
                                                        <span class="dropdown-menu" aria-labelledby="courseDropdown2">
                                                           
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-edit dropdown-item-icon"></i>
                                                                Sửa đề thi
                                                            </a>
                                                            <a class="dropdown-item" href="#">
                                                                <i class="fe fe-trash dropdown-item-icon"></i>
                                                                Xóa đề thi
                                                            </a>
                                                        </span>
                                                    </span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- Pagination -->
                                <div class="mt-3">
                                	 <!-- working with icons -->
									 <nav aria-label="Page navigation">
									  <ul class="pagination justify-content-end">
									    <li class="page-item">
									      <a class="page-link" href="#" aria-label="Previous">
									        <span aria-hidden="true">&laquo;</span>
									      </a>
									    </li>
									    <li class="page-item"><a class="page-link" href="#">1</a></li>
									    <li class="page-item"><a class="page-link" href="#">2</a></li>
									    <li class="page-item"><a class="page-link" href="#">3</a></li>
									    <li class="page-item">
									      <a class="page-link" href="#" aria-label="Next">
									        <span aria-hidden="true">&raquo;</span>
									      </a>
									    </li>
									  </ul>
									</nav>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-12 mt-lg-n8">
                        <!-- Card -->
                        <div class="card mb-3 mb-4">
                            <div class="p-1">
                                <div class="d-flex justify-content-center align-items-center rounded border-white border rounded-3 bg-cover"
                                    style="background-image: url(../assets/images/course/course-javascript.jpg); height: 210px">
                                    <a class="glightbox icon-shape rounded-circle btn-play icon-xl"
                                        href="https://www.youtube.com/watch?v=Nfzi7034Kbg">
                                        <i class="fe fe-play"></i>
                                    </a>
                                </div>
                            </div>
                            <!-- Card body -->
                            <div class="card-body">
                                <!-- Price single page -->
                                <div class="mb-3">
                                    <span class="card-body__title text-dark fw-bold h2">Bộ đề Listening</span>
                                    <p class="card-body__text text--description lh-sm">Lorem
									ipsum dolor sit amet consectetur adipisicing elit. Vero,
									necessitatibus quisquam! Quasi ipsa repellat necessitatibus
									consectetur dolores. Dolores, perferendis. Architecto esse, ut
									minima iusto cumque commodi? Expedita tempora numquam omnis!</p>
									<div class="card-list text--description">
										<div class="card-list__group mb-2">
											<i class="group__icon fe fe-book-open color-blue--primary"></i> <span
												class="group__content">4 đề</span>
										</div>
										<div class="card-list__group mb-2">
											<i class="group__icon fe fe-clock color-blue--primary"></i> <span
												class="group__content">180p</span>
										</div>
										<div class="card-list__group mb-2">
											<i class="group__icon fe fe-eye color-blue--primary"></i> <span
												class="group__content">100 lượt truy cập</span>
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

	<!-- Page content (old) -->
	<div class="admin-taobode container-fluid p-0 m-0">
		<div class="row g-4">
			<div
				class="col col-8 admin-taobode-left position-relative text-center">
				<h1 class="text--title color-blue--primary">IELTS Essential
					Guide</h1>
				<p class="text--description lh-sm">Bộ đề Cam kinh điển đầy đủ
					giái thích đáp án chi tiết. Luyện đề IELTS Essential Guide mới nhất
					với đầy đủ 4 kỹ năng, giúp thí sinh tự tin khi va chạm với mọi dạng
					đề.</p>
				<a
					class="btn-openpopup1 admin-taobode-btn bg-color-green--medium color-white text--h4 rounder-8 align-middle mx-auto"
					href="#" role="button" id="btn-open-popup">Tạo bộ đề</a>

				<div class="row g-4 danhsachbode">
					<!-- loop -->
					<c:forEach var="t" items="${topicList }">
						<div class="bodethi">
							<button value="${t.topicId}"
								class="accordion d-flex justify-content-between align-items-center text--h3 color-white bg-color-blue--primary rounder-8">
								<span class="accordion-order"></span> <span
									class="accordion-title ms-4">${t.topicName}</span>

								<div class="icon-list d-flex ">
									<a href="#" class="btn-openpopup icon-link icon-update"
										value="${t.topicId }"> <i
										class="fe fe-edit me-4 color-white"></i>
									</a> <a href="<c:url value='/admin/deleteTopic?id=${t.topicId}'/>"
										class="icon-link icon-delete"> <i
										class="fe fe-trash color-white"></i>
									</a>
								</div>
							</button>
							<!-- loop inner -->
							<div class="panel">
								<ul class="list p-0">
									<c:forEach var="m" items="${listMocktest }">
										<c:choose>
											<c:when test="${t.topicId == m.topicTests.topicId}">
												<li class="item bg-color-blue--light mb-4 text--h3"><a
													class="item-link text-start"
													href="<c:url value='/admin/listPart?idTest=${m.testId}'/>">${m.testName }</a>
													<div class="item-icon">
														<a href="#"
															class="btn-popup-updateTest icon-link icon-update"
															value="${m.testId}"> <i
															class="fe fe-edit me-4 color-blue--primary"></i>
														</a> <a
															href="<c:url value='/admin/deleteTest?idTest=${m.testId}'/>"
															class="icon-link icon-delete"> <i
															class="fe fe-trash color-red--medium"></i>
														</a>
													</div></li>
											</c:when>
										</c:choose>
									</c:forEach>

									<a href="#" class="btn-open-popupTest icon-link icon-update"
										id="" value="${t.topicId}"> <i
										class="fe fe-plus me-4 color-blue--primary"></i> Tạo đề thi
										mới
									</a>

								</ul>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			
			<div class="col col-4 admin-taobode-right">
				<div class="card-cover border-0 bg-color-grey">
					<span class="card__text text--description">Chi tiết</span> <img
						class="card__img shadow-black" src="" alt="hinh anh bo de">
					<div class="card-body p-0">
						<h2 class="card-body__title text--h2 color-black">Bộ đề
							Listening</h2>
						<p class="card-body__text text--description color-black">Lorem
							ipsum dolor sit amet consectetur adipisicing elit. Vero,
							necessitatibus quisquam! Quasi ipsa repellat necessitatibus
							consectetur dolores. Dolores, perferendis. Architecto esse, ut
							minima iusto cumque commodi? Expedita tempora numquam omnis!</p>
					</div>
					<div class="card-list text--description color-blue--primary">
						<div class="card-list__group">
							<i class="group__icon fe fe-book-open"></i> <span
								class="group__content">4 đề</span>
						</div>
						<div class="card-list__group">
							<i class="group__icon fe fe-clock"></i> <span
								class="group__content">180p</span>
						</div>
						<div class="card-list__group">
							<i class="group__icon fe fe-eye"></i> <span
								class="group__content">100 lượt truy cập</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<c:if test="${not empty messSuccess }">${messSuccess}</c:if>
	<c:if test="${not empty messError }">${messError}</c:if>
	<h2>${messSuccess}</h2>
	<h2>${messError}</h2>
	<!-- Modal -->
	<div id="model"
			style="min-width: 800px; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); z-index: 3; display: none;">
			<form action="addPart" method="post" enctype="multipart/form-data">
				<div id="test-l-1" class="bs-stepper-pane"
					aria-labelledby="courseFormtrigger1">
					<!-- Card -->
					<div class="card mb-3">
						<div class="card-header border-bottom px-4 py-3">
							<h4 class="mb-0">Tạo bộ đề mới</h4>
						</div>
						<!-- Card body -->
						<div style="max-height: 450px" class=" overflow-auto">
							<div class="card-body">
								<div class="mb-3">
									<label for="courseTitle" class="form-label">Number of
										Part</label><input id="partNumber" name="partNumber"
										class="form-control" type="text" placeholder="No.Part"
										required> <small>Write a 60 character course
										title.</small>
								</div>

								<div class="mb-3">
									<label class="form-label">Thêm ảnh bìa</label> 
									<input type="file" class="form-control"
											name="image" id=""
											accept="image/jpeg, image/png" require>
								</div>
								<div class="mb-3">
									<label class="form-label">Answer Sheet</label>
									<div id="editor">
										<div>This is some sample content.</div>
									</div>
									<input type="hidden" id="answerSheetInput" name="answerSheet" />
								</div>
							</div>

							<div class="card-body">
								<div class="mb-3">
									<label class="form-label">Answer Test</label>

								</div>
								<div id="answerTest" class="d-flex flex-column gap-3"></div>
								<div onclick="addQuestion()" style="margin: 10px"
									class="btn btn-light">Add Answer Test</div>
							</div>

						</div>
						<!-- Button -->
						<button margin: 10px"
						class="btn btn-primary" type="submit">Xác
							nhận</button>
					</div>
				</div>
			</form>
		</div>
		<div id="shadow"
		class="position-absolute top-0 start-0 bottom-0 end-0 bg-dark"
		style="opacity: 0.5; display: none; z-index: 2" onclick="hideShadow()"></div>
		
	
	
	<!-- popup Tao bo de-->
	<div class="popup" id="popup-add-bo-de">
		<div
			class="popup-group d-flex justify-content-between align-items-center">
			<span class="title">Title</span> <i class="fe fa-xmark"
				id="btn-close"></i>
		</div>

		<form action="addTopic" method="POST" class="form-popup"
			enctype="multipart/form-data">
			<div
				class="popup-upload d-flex justify-content-between align-items-center">
				<span class="popup-upload__text">upload</span> <input type="file"
					name="image" id="" class="popup-upload__input"
					accept="image/jpeg, image/png">
			</div>
			<div
				class="popup-title d-flex justify-content-between align-items-center">
				<span class="popup-title__text">ten</span> <input type="text"
					name="name" id="" class="popup-title__input">
			</div>
			<div
				class="popup-descript d-flex justify-content-between align-items-center">
				<span class="popup-descript__text">mo ta</span> <input type="text"
					name="description" id="" class="popup-descript__input">
			</div>
			<div style="display: none !important"
				class="popup-cost d-flex justify-content-between align-items-center">
				<span class="popup-cost__text">Gia tien</span> <input type="text"
					name="cost" id="" class="popup-cost__input">
			</div>
			<input style="display: none !important" type="text" name="id" id=""
				class="popup-id_input"> <input type="submit"
				value="hoan thanh" onclick="show()">
		</form>
	</div>

	<!-- Demonstration Script -->
	<script>
		//accordion:
		var acc = document.getElementsByClassName("accordion");
		var i;
		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				//lấy thông tin Topic
				var idTopicCurrent = this.getAttribute("value");
				getInfoTopic(idTopicCurrent);
				//
				this.classList.toggle("active");
				var panel = this.nextElementSibling;
				if (panel.style.display === "block") {
					panel.style.display = "none";
				} else {
					panel.style.display = "block";
				}
			});
		}
		
		
		//hien thi thong tin topic:
		var getInfoTopic = function (id) {
			for(var i of arrTopic){
				if(id === i.topicId)
	            {
	                document.querySelector(".card-cover .card-body__title").innerHTML = i.topicId;
	                document.querySelector(".card-cover .card-body__text").innerHTML = i.topicName;
	                //console.log(i.image);
	                var fileImg = "<c:url value='/image?fname=topicIMG/" + String(i.image) +"'/>";
	                document.querySelector(".card-cover .card__img").setAttribute("src", fileImg);	   
	                document.querySelector(".card-cover .group__content").innerHTML = countMockByTopic(id) + " đề" ;	
	                return;
	            }
			}
			}
		
		//dem so luong de trong topic:
		function countMockByTopic(id){
            var count = 0;
            for(var i of arrMock) {
                if(id === i.topic) {
                    ++count;
                }
            }
            return count;
        }
		
		//popup
		//update Topic
		var modal = document.getElementById("popup-add-bo-de");
        var close = document.getElementById("btn-close");
		var btn = document.getElementsByClassName("btn-openpopup");
		for (i = 0; i < btn.length; i++) {
			btn[i].addEventListener("click", function() {
				
		        modal.style.display = "block";
		        var topicID = this.getAttribute("value");
		        console.log(this.getAttribute("value"));
		        for(var t of arrTopic) {
	                if(t.topicId === topicID) {
	                	document.querySelector(".popup .popup-upload__input").setAttribute("value", t.image) ;
	                	document.querySelector(".popup .popup-title__input").setAttribute("value",t.topicName) ;
	                	document.querySelector(".popup .popup-descript__input").setAttribute("value", t.description) ;
	                	document.querySelector(".popup .popup-id_input").setAttribute("value", t.topicId) ;
	                	document.querySelector(".popup .form-popup").setAttribute("action", "updateTopic") ;
	                }
	            }
			}, false);
	        
		}
		//add Topic
		var btn = document.getElementById("btn-open-popup");
		btn.onclick = function(){
            modal.style.display = "block";
        }
        
        
        //add MockTest
        var btn = document.getElementsByClassName("btn-open-popupTest");
        for (i = 0; i < btn.length; i++) {
			btn[i].addEventListener("click", function(){
				modal.style.display = "block";
				document.querySelector(".popup .popup-upload__input").setAttribute("accept", "audio/*") ;
	            document.querySelector(".popup .popup-id_input").setAttribute("value", this.getAttribute("value")) ;
	            document.querySelector(".popup .popup-cost").style.display = "flex";
	            document.querySelector(".popup .form-popup").setAttribute("action", "addMockTest") ;
			}
			)
        }
        
      //update MockTest
		var btn = document.getElementsByClassName("btn-popup-updateTest");
		for (i = 0; i < btn.length; i++) {
			btn[i].addEventListener("click", function() {
				
		        modal.style.display = "block";
		        var testID = this.getAttribute("value");
		        console.log(this.getAttribute("value"));
		        for(var t of arrMock) {
	                if(t.testId === testID) {
	                	console.log(t);
	                	//document.querySelector(".popup .popup-upload__input").setAttribute("value", t.image) ;
	                	document.querySelector(".popup .popup-title__input").setAttribute("value",t.testName) ;
	                	document.querySelector(".popup .popup-descript__input").setAttribute("value", t.description) ;
	                	document.querySelector(".popup .popup-id_input").setAttribute("value", t.testId) ;
	                	document.querySelector(".popup .popup-cost").style.display = "flex";
	                	document.querySelector(".popup .popup-cost__input").setAttribute("value", t.cost) ;
	                	document.querySelector(".popup .form-popup").setAttribute("action", "updateMockTest") ;
	                	//document.querySelector(".popup .form-popup").setAttribute("method", "GET") ;
		                
	                }
	            }
			}, false);
	        
		}
		
		//close popup
        close.onclick = function(){
            modal.style.display = "none"; }
       
	</script>
	<script>
	function showFile(fileInputs){
		document.querySelectorAll("h5").forEach(h5 => h5.remove());
		const files = fileInputs.files;
		for (let i = 0; i < files.length; i++){
			const path = (window.URL || window.webkitURL).createObjectURL(files[i]);
			console.log(files[i]);
			const html = "<h5>"+files[i].name+"</h5>";
			document.querySelector("form").insertAdjacentHTML("afterend", html);
		}
	}
	</script>

	<script>
	 ClassicEditor
     .create(document.querySelector('#editor'))
     .then(editor => {
         console.log(editor);

         // Update hidden input with CKEditor content
         editor.model.document.on('change:data', () => {
             document.getElementById('answerSheetInput').value = editor.getData();
         });
     })
     .catch(error => {
         console.error(error);
     });
     </script>
	<script
		src="https://cdn.ckeditor.com/ckeditor5/40.0.0/classic/ckeditor.js"></script>
	<script>
		function showModel() {
			// Show the shadow
			document.getElementById("shadow").style.display = "block";
			document.getElementById("model").style.display = "block";
		}

		function hideShadow() {
			// Hide the shadow
			document.getElementById("shadow").style.display = "none";
			document.getElementById("model").style.display = "none";
		}
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
		
	        <!-- Libs JS -->
	<script src="../assets/libs/%40popperjs/core/dist/umd/popper.min.js"></script>
	<script src="../assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
	<script src="../assets/libs/simplebar/dist/simplebar.min.js"></script>
	
	<script src="../assets/js/theme.min.js"></script>
    <script src="../assets/libs/quill/dist/quill.min.js"></script>
    <script src="../assets/js/vendors/editor.js"></script>
    <script src="../assets/js/vendors/validation.js"></script>
</body>
</html>