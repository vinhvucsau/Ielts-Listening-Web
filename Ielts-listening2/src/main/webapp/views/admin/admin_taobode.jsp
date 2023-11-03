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

	<div style="height: 60px; background-color: red" class="header-admin">HEADER ADMIN</div>

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
										class="fa-solid fa-pen me-4 color-white"></i>
									</a> <a href="<c:url value='/admin/deleteTopic?id=${t.topicId}'/>"
										class="icon-link icon-delete"> <i
										class="fa-solid fa-trash color-white"></i>
									</a>
								</div>
							</button>
							<!-- loop inner -->
							<div class="panel">
								<ul class="list p-0">
									<c:forEach var="m" items="${listMocktest }">
										<c:choose>
											<c:when test="${t.topicId == m.topicTests.topicId}">
												<li class="item bg-color-blue--light mb-4 text--h3">
													<a class="item-link text-start" href="<c:url value='/admin/listPart?idTest=${m.testId}'/>">${m.testName }</a>
													<div class="item-icon">
														<a href="#"
															class="btn-popup-updateTest icon-link icon-update"
															value="${m.testId}"> 
															<i class="fa-solid fa-pen me-4 color-blue--primary"></i>
														</a> 
														<a
															href="<c:url value='/admin/deleteTest?idTest=${m.testId}'/>"
															class="icon-link icon-delete"> <i
															class="fa-solid fa-trash color-red--medium"></i>
														</a>
													</div></li>
											</c:when>
										</c:choose>
									</c:forEach>

									<a href="#" class="btn-open-popupTest icon-link icon-update"
										id="" value="${t.topicId}"> <i
										class="fa-solid fa-plus me-4 color-blue--primary"></i> Tạo đề
										thi mới
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
							<i class="group__icon fa-solid fa-book-open"></i> <span
								class="group__content">4 đề</span>
						</div>
						<div class="card-list__group">
							<i class="group__icon fa-solid fa-clock"></i> <span
								class="group__content">180p</span>
						</div>
						<div class="card-list__group">
							<i class="group__icon fa-solid fa-eye"></i> <span
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
	<!-- popup Tao bo de-->
	<div class="popup" id="popup-add-bo-de">
		<div
			class="popup-group d-flex justify-content-between align-items-center">
			<span class="title">Title</span> <i class="fa-solid fa-xmark"
				id="btn-close"></i>
		</div>

		<form action="addTopic" method="POST" class="form-popup"
			enctype="multipart/form-data">
			<div
				class="popup-upload d-flex justify-content-between align-items-center">
				<span class="popup-upload__text">upload</span> <input type="file"
					name="image" id="" class="popup-upload__input" accept="image/jpeg, image/png">
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
			<input style="display: none !important" type="text" name="id" id="" class="popup-id_input">
			<input type="submit" value="hoan thanh" onclick="show()">
		</form>
	</div>

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
	                var fileImg = "<c:url value='/assets/topicIMG/" + String(i.image) +"'/>";
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

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>