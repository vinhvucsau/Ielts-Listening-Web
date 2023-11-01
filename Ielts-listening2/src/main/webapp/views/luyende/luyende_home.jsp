<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

</head>
<body>
	<style>
		.btn{
			transition: 0.3s ease-out;
		}
		.btn--2{
			background-color: #eceef1; 
		}
		.btn:hover{
			color: #fff !important;
			background-color: #0071F9 !important;
		}
		.btn:disabled,
		button[disabled]{
			color: #9ca3af;
			background-color: #e5e7eb;
		}
		.ul__test li{
			transition: 0.6s ease-in-out;
		}
		.ul__test .active, .ul__test li:hover{
			background-color: white;
			color: rgb(0, 74, 185);
			border-radius: 0.5rem;
		}
		.px-7 {
			padding-left: 6rem !important;
			padding-right: 6rem ! important;
		}
		.py-7{
			padding-top: 6rem !important;
			padding-bottom: 6rem ! important;
		}
		.div__tab{
			cursor: pointer;
		}
		input::-webkit-outer-spin-button,
		input::-webkit-inner-spin-button {
		  -webkit-appearance: none;
		  margin: 0;
		}
	</style>
	<div class="m-0 p-0" style="background-color: rgb(247, 247, 247); ">
		<div class="w-100 m-0" style="background-color: #DDE4FB; height: 450px;"></div>
		<div class="px-7 py-7">
			<div class="bg-white px-4 py-4 rounded-4">
				<p class="fs-5 fw-bold mb-0 color-blue--primary">Tiếp tục làm bài</p>
				<p class="fs-4 fw-bold mb-0">IELTS Essential Guide</p>
				<p class="fs-5 fw-bold mb-0" style="color: rgb(113,113,113)">Cam 18 - Test 2</p>
				<button class="btn d-flex flex-row justify-content-center w-100 h-25 mt-4 py-2 fs-5 fw-bold color-blue--primary bg-color-blue--light">
					Tiếp tục làm bài
					<svg xmlns="http://www.w3.org/2000/svg" height="24" style="margin-top: 3px;"
						fill="currentColor" class="bi bi-arrow-right ms-3" viewBox="0 0 16 16">
  						<path fill-rule="evenodd"
						d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
					</svg> 
				</button>
			</div>
			<p class="fs-3 fw-bold my-5">Hôm nay bạn muốn luyện</p>
			<div class="d-flex flex-row justify-content-between">
				<ul class="ul__test nav fs-5 fw-bold justify-content-between" style="width:500px">
				  <li class="nav-item  ">
				    <div class="div__tab div__tab--1 nav-link rounded-3 color-blue--primary ${param.tab == null || param.tab == '1' ? 'active' : ''}">Tất cả bộ đề</div>
				  </li>
				  <li class="nav-item ">
				    <div class="div__tab div__tab--2 nav-link rounded-3 color-blue--primary ${param.tab == '2' ? 'active' : ''}" href="#">Bộ đề Mới nhất</div>
				  </li>
				  <li class="nav-item ">
				    <div class="div__tab div__tab--3 nav-link rounded-3 color-blue--primary ${param.tab == '3' ? 'active' : ''}" href="#">Bộ đề HOT</div>
				  </li>
				</ul>
				<div class="input-group" style="width: 400px;">
				  <span class="input-group-text px-3 border-0" id="basic-addon1" style="background-color: white; color: rgb(107,114,128);">
					  	<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
		  					<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
						</svg>
				  </span>
				  <input type="text" class="btn__search form-control py-2 fs-5 border-0" placeholder="Tìm kiếm" aria-label="Search" aria-describedby="basic-addon1" value='${param.search == null ? "" : param.search }'>
				</div>
			</div>
			<c:if test="${topicTests.size() == 0}">
				<div class="w-100 d-flex flex-row justify-content-center my-5">
					<div>
						<img class="mx-auto d-block my-3" src='<c:url value="/assets/images/bee-find.svg"/>' width="150px"/>
						<p class="fs-4 fw-bold mb-0 text-center">Không tìm thấy kết quả phù hợp</p>
						<p class="text-center" style="color: rgb(123,137,155); font-size: 18px; width: 680px;">Hiện tại, kho đề của Prep chưa có bộ đề nào phù hợp với yêu cầu của bạn rồi !
Hãy thử lại bằng cách bỏ bớt bộ lọc nhé.</p>
					</div>
				</div>
			</c:if>
			<c:forEach var="topicTest" items='${topicTests}'>
				<div class="w-100 bg-white px-4 py-4 my-5 rounded-4">
					<div class="position-relative intro d-flex flex-row">
						<img style="cursor:pointer" src='<c:url value="/assets/images/${topicTest.image}"/>' width="150px"/>
						<div class="w-75">
							<p class="fs-4 fw-bold mb-0" style="cursor:pointer">${topicTest.topicName}</p>
							<p style="color: rgb(123,137,155); font-size: 18px; cursor:pointer">${topicTest.description}</p>
						</div>
						<div class="position-absolute end-0 px-4 rounded-3 d-flex flex-column justify-content-center" style="background-color: rgb(243,244,246); height: 40px;">
							<p class="fw-semibold h-25" style="font-size: 18px;" >0/${topicTest.mockTests.size()} đề</p>
						</div>
					</div>
					<c:set var="i" value="0"></c:set>
					<div class="overflow-hidden my-3">
					  <div class="row gy-4">
						  	<c:forEach var="mockTest" items='${topicTest.mockTests}'>
						  		<c:if test="${i < 6}">
							  		<div class="col-6" style="cursor:pointer">
								      <div class="p-3 border bg-white d-flex flex-row rounded-3">
								      	<div class="rounded-3 d-flex justify-content-center align-items-center fw-bold" style="background-color: rgb(240, 247, 255); color:rgb(0, 74, 185); width: 50px; height: 50px;">
								      		<svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" fill="currentColor" class="bi bi-headphones fw-bold" viewBox="0 0 16 16">
				  								<path d="M8 3a5 5 0 0 0-5 5v1h1a1 1 0 0 1 1 1v3a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V8a6 6 0 1 1 12 0v5a1 1 0 0 1-1 1h-1a1 1 0 0 1-1-1v-3a1 1 0 0 1 1-1h1V8a5 5 0 0 0-5-5z"/>
											</svg>
								      	</div>
								      	<p class="fs-5 fw-bold d-flex flex-column justify-content-center ms-3 mb-0">${mockTest.testName}</p>
								      </div>
							    	</div>
							    	<c:set var="i" value="${i+1 }"></c:set>
							    </c:if>
						  	</c:forEach>	
					  </div>
					</div>
					<button class="btn d-flex flex-row justify-content-center h-25 mt-4 mx-auto py-2 px-3 fs-5 fw-bold bg-color-blue--light color-blue--primary">
						Xem thêm ${topicTest.mockTests.size() - i} đề
						<svg xmlns="http://www.w3.org/2000/svg" height="24" style="margin-top: 3px;"
							fill="currentColor" class="bi bi-arrow-right ms-3" viewBox="0 0 16 16">
	  						<path fill-rule="evenodd"
							d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
						</svg> 
					</button>
				</div>
			</c:forEach>
			
			<c:if test="${topicTests.size() > 0}">
				<div class="position-relative w-100 border-top">
					<div class="d-flex flex-row justify-content-center mx-auto" style="width:500px">
						<button class="btn__page--previous d-flex flex-row justify-content-between mt-4 mx-auto py-2 fs-5 fw-bold  border-0 rounded-3" style="width: 220px; padding: 0 30px 0 30px;" ${ param.page == null || param.page == "1" ? "disabled":""}>
							<svg xmlns="http://www.w3.org/2000/svg" height="24" style="margin-top: 3px;"
								fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
		  						<path fill-rule="evenodd" 
		  						d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
							</svg>
							Trang Trước
						</button>
						<button class="btn__page--next d-flex flex-row justify-content-between mt-4 mx-auto py-2 fs-5 fw-bold border-0 rounded-3" style="width: 220px; padding: 0 30px 0 30px;" ${ param.page == pageNum || (param.page == null && pageNum == "1") ? "disabled":""}>
							Trang Sau
							<svg xmlns="http://www.w3.org/2000/svg" height="24" style="margin-top: 3px;"
								fill="currentColor" class="bi bi-arrow-right" viewBox="0 0 16 16">
		  						<path fill-rule="evenodd"
								d="M1 8a.5.5 0 0 1 .5-.5h11.793l-3.147-3.146a.5.5 0 0 1 .708-.708l4 4a.5.5 0 0 1 0 .708l-4 4a.5.5 0 0 1-.708-.708L13.293 8.5H1.5A.5.5 0 0 1 1 8z" />
							</svg> 
						</button>
					</div>
					<div class="position-absolute top-0 end-0 mt-4 fs-5">
						<input type="number" class="input__pageNum bg-white py-2 px-2 me-2 rounded-3 text-center border-0" max="10" min="1" value='${param.page == null ? 1 : param.page}' style="width:50px; height:50px;"/>
						của ${pageNum}
						<button class="btn__page--min btn--2 px-2 ms-4 rounded-3 border-0" style="width:50px; height:50px;">
							<span>
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-bar-left mb-1" viewBox="0 0 16 16">
		  							<path fill-rule="evenodd" d="M12.5 15a.5.5 0 0 1-.5-.5v-13a.5.5 0 0 1 1 0v13a.5.5 0 0 1-.5.5ZM10 8a.5.5 0 0 1-.5.5H3.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L3.707 7.5H9.5a.5.5 0 0 1 .5.5Z"/>
								</svg>
							</span>
						</button>
						<button class="btn__page--max btn--2 px-2 ms-2 rounded-3 border-0" style="width:50px; height:50px;">
							<span>
								<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-arrow-bar-right mb-1" viewBox="0 0 16 16">
		 							 <path fill-rule="evenodd" d="M6 8a.5.5 0 0 0 .5.5h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 0 0-.708.708L12.293 7.5H6.5A.5.5 0 0 0 6 8Zm-2.5 7a.5.5 0 0 1-.5-.5v-13a.5.5 0 0 1 1 0v13a.5.5 0 0 1-.5.5Z"/>
								</svg>
							</span>
						</button>
					</div>
				</div>
			</c:if>
		</div>
	</div>
	<script>
		const params = new URLSearchParams(document.location.search);
		let page = params.get("page") ? params.get("page"):'1';
		
		const li_List = document.querySelectorAll(".div__tab");
		let currLi = document.querySelectorAll(".div__tab")[0];
		if (li_List) {
			li_List.forEach((li, i) => {
				li.addEventListener("click", (e) => {
					currLi.classList.remove("active");
					currLi = li;
					currLi.classList.add("active");
					params.delete("page"); 
					if (i === 0) {
						params.delete("tab");
					}
					else params.set("tab", i + 1);
					const isQuestionMark = params.toString() === "" ? "" : "?";
					window.location.replace(location.protocol + '//' + location.host + location.pathname + isQuestionMark + params.toString());
				})
			})
		}
		const prePageBtn = document.querySelector(".btn__page--previous");
		const nextPageBtn = document.querySelector(".btn__page--next");
		if (prePageBtn) {
			if (prePageBtn.disabled === false) {
				prePageBtn.classList.add("bg-color-blue--primary");
				prePageBtn.classList.add("color-white");
			}
			prePageBtn.addEventListener("click", (e) => {
				e.preventDefault();
				page = Number(page) - 1;
				if (page == 1){
					params.delete("page"); 
					const isQuestionMark = params.toString() === "" ? "" : "?";
					window.location.replace(location.protocol + '//' + location.host + location.pathname + isQuestionMark + params.toString());
				}
				else {
					params.set("page", page);
					const isQuestionMark = params.toString() === "" ? "" : "?";
					window.location.replace(location.protocol + '//' + location.host + location.pathname + isQuestionMark + params.toString());
				}
				
			})
		}
		
		if (nextPageBtn) {
			if (nextPageBtn.disabled === false) {
				nextPageBtn.classList.add("bg-color-blue--primary");
				nextPageBtn.classList.add("color-white");
			}
			nextPageBtn.addEventListener("click", (e) => {
				e.preventDefault();
				page = Number(page) + 1;
				params.set("page", page);
				const isQuestionMark = params.toString() === "" ? "" : "?";
				window.location.replace(location.protocol + '//' + location.host + location.pathname + isQuestionMark + params.toString());
			}) 
		} 
		
		const inputPageNum = document.querySelector(".input__pageNum");
		if (inputPageNum) {
			inputPageNum.addEventListener("change", (e) => {
				e.preventDefault();
				page = e.target.value;
				if (Number(page) < 1) {
					page = 1;
				}
				if (Number(page) > Number('${pageNum}')) {
					page = '${pageNum}';
				}
				
				params.set("page", page);
				const isQuestionMark = params.toString() === "" ? "" : "?";
				window.location.replace(location.protocol + '//' + location.host + location.pathname + isQuestionMark + params.toString());
			})
		}
		const minPageBtn = document.querySelector(".btn__page--min");
		const maxPageBtn = document.querySelector(".btn__page--max");
		if (minPageBtn) {
			if (page === "1") {
				minPageBtn.disabled = true;
			}
			else minPageBtn.disabled = false;
			minPageBtn.addEventListener("click", (e) => {
				e.preventDefault();
				params.delete("page"); 
				const isQuestionMark = params.toString() === "" ? "" : "?";
				window.location.replace(location.protocol + '//' + location.host + location.pathname + isQuestionMark + params.toString());
			})
		}
		if (maxPageBtn) {
			if (page === '${pageNum}') {
				maxPageBtn.disabled = true;
			}
			else maxPageBtn.disabled = false;
			maxPageBtn.addEventListener("click", (e) => {
				e.preventDefault();
				params.set("page", ${pageNum});
				const isQuestionMark = params.toString() === "" ? "" : "?";
				window.location.replace(location.protocol + '//' + location.host + location.pathname + isQuestionMark + params.toString());
			})
		}
		const searchBtn = document.querySelector(".btn__search");
		if (searchBtn) {
			searchBtn.addEventListener("keypress", (e) => {
				if (e.key ==="Enter") {
					e.preventDefault();
					params.delete("page"); 
					if (e.target.value !== "")
						params.set("search", e.target.value);
					else params.delete("search");
					const isQuestionMark = params.toString() === "" ? "" : "?";
					window.location.replace(location.protocol + '//' + location.host + location.pathname + isQuestionMark + params.toString());
				}
			})
		}
	</script>
</body>
</html>