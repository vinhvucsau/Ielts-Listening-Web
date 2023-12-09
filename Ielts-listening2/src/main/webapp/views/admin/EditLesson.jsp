<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- Model -->
	<div class="model" id="model"
		style="min-width: 800px; position: fixed; top: 50%; left: 50%; transform: translate(-50%, -50%); z-index: 3;">
		<form action="editLesson?lessonId=${lessonId}" method="post" enctype="multipart/form-data">
			<div id="test-l-1" class="bs-stepper-pane"
				aria-labelledby="courseFormtrigger1">
				<!-- Card -->
				<div class="card mb-3">
					<div class="card-header border-bottom px-4 py-3">
						<h4 class="mb-0">Tạo bài học mới</h4>
					</div>
					<!-- Card body -->
					<div style="max-height: 450px" class=" overflow-auto">
						<div class="card-body">
							<div class="mb-3">
								<label for="courseTitle" class="form-label">Tên bài học</label>
									<input id="lessonName" name="lessonName" value="${lesson.lessonName }"
									class="model__name form-control" type="text" placeholder="Tên bài học"
									required> <small>Write a 60 character course
									title.</small>
							</div>
							
							<div class="mb-3">
								<audio style="width: 100%"
									src="<c:url value='/image?fname=videoLesson/${lesson.video }'/>"
									controls></audio>
	
								<label class="form-label">Edit Video File</label> 
								<input
									style="display: none" name="preAudio"
									value="${lesson.video }"> 
								<input
									value="${lesson.video }" type="file" id="video"
									name="video" multiple="multiple"
									style="border: 1px solid black;" accept="audio/*, .mp3"
									onchange="showFile(this)">
	
								<div id="audio"></div>
							</div>
							
							<div class="mb-3">
								<label class="form-label">Answer Sheet</label>
								<div id="editor">
									<div>${lesson.answerSheet }</div>
								</div>
								<input type="hidden" id="answerSheetInput" name="answerSheet" value="${lesson.answerSheet }" />
							</div>
						</div>

						<div class="card-body">
							<div class="mb-3">
								<label class="form-label">Answer Test</label>

							</div>
							<div id="answerLesson" class="d-flex flex-column gap-3">
							<c:forEach var="ans" items="${listAns}">
								<div class="d-flex flex-column gap-3">
									<label name="question${ans.number}" value="question${ans.number}">Question ${ans.number}</label>
									<input type="text" placeholder="Enter your answer..." class="form-control" name="answer${ans.number}" value="${ans.answerKey}">
									<input type="Hidden" name="answerId${ans.number}" value="${ans.answerId}">
								</div>
								
							</c:forEach>
						</div>
						</div>

					</div>
					<!-- Button -->
					<button margin: 10px" class="btn btn-primary"
						type="submit">Xác nhận</button>
				</div>
			</div>
		</form>
	</div>
	
	<div id="shadow"
		class="position-fixed  top-0 start-0 bottom-0 end-0 bg-dark"
		style="opacity: 0.5; z-index: 2"></div>
	
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
</body>
</html>