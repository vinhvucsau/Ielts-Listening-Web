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
				topicName : "${item.description}",
				image : "${item.image}"
			};
			arrTopic.push(item);
		</c:forEach>
		
		<c:forEach var="item" items="${listMocktest}">
		var itemMock = {
			testId : "${item.testId}",
			testName : "${item.testName}",
			topic : "${item.topicTests.topicId}"
		};
		arrMock.push(itemMock);
		</c:forEach>
	</script>

	<div style="height: 60px; background-color: red" class="header-admin">HEADER
		ADMIN</div>

	<div class="admin-taobode container-fluid p-0 m-0">
		<div class="row g-4">
			<div class="col col-8 admin-taobode-left position-relative text-center">
				<h1 class="text--title color-blue--primary">IELTS Essential
					Guide</h1>
				<p class="text--description lh-sm">Bộ đề Cam kinh điển đầy đủ
					giái thích đáp án chi tiết. Luyện đề IELTS Essential Guide mới nhất
					với đầy đủ 4 kỹ năng, giúp thí sinh tự tin khi va chạm với mọi dạng
					đề.</p>
				<a
					class="admin-taobode-btn bg-color-green--medium color-white text--h4 rounder-8 align-middle mx-auto"
					href="#" role="button" id="btn-addTopic">Tạo bộ đề</a>

				<div class="row g-4 danhsachbode">
					<!-- loop -->
					<c:forEach var="t" items="${topicList }">
						<div class="bodethi">
							<button value="${t.topicId}"
								class="accordion d-flex justify-content-between align-items-center text--h3 color-white bg-color-blue--primary rounder-8">
								<span class="accordion-order"></span> 
								<span class="accordion-title ms-4">${t.topicId}</span>
								<div class="icon-list d-flex ">
									<a href="#" class="icon-link icon-update"> <i
										class="fa-solid fa-pen me-4 color-white"></i>
									</a> 
									<a href="#" class="icon-link icon-delete"> <i
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
												<li class="item bg-color-blue--light mb-4 text--h3"><a
													class="item-link text-start" href="">${m.testName }</a>
													<div class="item-icon">
														<a href="#" class="icon-link icon-update"> <i
															class="fa-solid fa-pen me-4 color-blue--primary"></i>
														</a> <a href="#" class="icon-link icon-delete"> <i
															class="fa-solid fa-trash color-red--medium"></i>
														</a>
													</div></li>
											</c:when>
										</c:choose>
									</c:forEach>
								</ul>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>

			<div class="col col-4 admin-taobode-right">
				<div class="card-cover border-0 bg-color-grey">
					<span class="card__text text--description">Chi tiết</span> <img
						class="card__img shadow-black"
						src="/main/webapp/assets/topicIMG/1698681165584.jpg"
						alt="hinh anh bo de">
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
	<!-- popup -->
	<div class="popup" id="popup-add-bo-de">
        <div class="popup-group d-flex justify-content-between align-items-center">
            <span class="title">Title</span>
            <i class="fa-solid fa-xmark" id="btn-close"></i>
        </div>
        
        <form action="addTopic" method = "POST" class="form-popup" enctype = "multipart/form-data">
            <div class="popup-upload d-flex justify-content-between align-items-center">
                <span class="popup-upload__text">upload</span>
                <input type="file" name="image" id="" accept="image/png, image/jpeg">
            </div>
            <div class="popup-title d-flex justify-content-between align-items-center">
                <span class="popup-title__text">ten</span>
                <input type="text" name="topicName" id="" class="popup-title__input">
            </div>
            <div class="popup-descript d-flex justify-content-between align-items-center">
                <span class="popup-descript__text">mo ta</span>
                <input type="text" name="description" id="" class="popup-descript__input">
            </div>
            <input type="submit" value="hoan thanh">
        </form>
    </div>
	
	<script>
		var acc = document.getElementsByClassName("accordion");
		var i;
		for (i = 0; i < acc.length; i++) {
			acc[i].addEventListener("click", function() {
				//lấy thông tin Topic
				var idTopicCurrent = this.getAttribute("value");
				console.log(idTopicCurrent);
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
		
		var getInfoTopic = function (id) {
			for(var i of arrTopic){
				console.log(i);
				if(id === i.topicId)
	            {
	                document.querySelector(".card-cover .card-body__title").innerHTML = i.topicId;
	                document.querySelector(".card-cover .card-body__text").innerHTML = i.topicName;
	                var fileImg = "assets/topicIMG/" + String(i.image);
	                console.log(fileImg);
	                document.querySelector(".card-cover .card__img").setAttribute("src", fileImg);	   
	                document.querySelector(".card-cover .group__content").innerHTML = countMockByTopic(id) + " đề" ;	
	                console.log(countMockByTopic(id));
	                console.log(document.querySelector(".card-cover .card__img").getAttribute("src"));
	                return;
	            }
			}
			}
		
		function countMockByTopic(id){
            var count = 0;
            for(var i of arrMock) {
                if(id === i.topic) {
                	console.log("ok");
                    ++count;
                }
            }
            return count;
        }
		
		//
		var btn = document.getElementById("btn-addTopic");
        var modal = document.getElementById("popup-add-bo-de");
        var close = document.getElementById("btn-close");

        btn.onclick = function(){
            modal.style.display = "block";
        }

        close.onclick = function(){
            modal.style.display = "none";
        }
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>