<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< Updated
upstream:Ielts-listening2/src/main/webapp/views/luyende/luyende_test.jsp
<title>Insert title here</title> =======
<title>Insert title here</title> >>>>>>> Stashed
changes:Ielts-listening2/src/main/webapp/views/luyende_test.jsp
</head>
<body>
	<div id="test">
		<nav class="nav-test">
			<div class="container-xxl">
				<div class="row">
					<div class="col-3 d-flex justify-content-start">
						<a href="#" class="btn-exit"> <i class="ti-angle-left me-1"></i>
							<h6>Trở về</h6>
						</a> <img src="https://prep.vn/imgs/logo.png" alt="logo" class="logo">
					</div>
					<div class="col-6 d-flex justify-content-center">
						<div class="test-time">
							<i class="ti-alarm-clock me-2"></i>
							<h6 class="timer" valuenow="${currentTime}" valuemax="${endingTime}" enrollTestId="${enrollTest.enrrolId}">00 : 00 : 00</h6>
						</div>
						<h3 class="d-flex align-items-center">CAM 18 - TEST 2</h3>
					</div>
					<div class="col-3 d-flex justify-content-end">
						<a href="#" class="px-3 d-flex text-center align-items-center"><i
							class="ti-user"></i></a> <a href="#"
							class="px-3 d-flex text-center align-items-center"><i
							class="ti-book"></i></a>
					</div>
				</div>
			</div>
		</nav>
		<div class="container-xxl">
			<div class="row mt-3">
				<div class="col-3 d-flex">
					<i class="ti-headphone me-2"></i>
					<h6>Đề bài</h6>
				</div>
				<div class="col-6 d-flex">
					<i class="ti-microphone me-2"></i>
					<h6>Đề bài</h6>
				</div>
				<div class="col-3 d-flex">
					<i class="ti-bookmark-alt me-2"></i>
					<h6>Trả lời</h6>
				</div>
			</div>
			<div class="test-content row">
				<div class="col-3">
					<div class="audio-area">
						<div class="row">
							<div class="col d-flex align-items-center justify-content-start">
								<i class="prev10s-btn ti-arrow-circle-left"></i>
							</div>
							<div class="col d-flex justify-content-center">
								<div
									class="btn-toggle-play rounded-circle d-flex align-items-center justify-content-center">
									<i class="icon-play ti-control-play"></i> <i
										class="icon-pause ti-control-pause"></i>
								</div>
							</div>
							<div class="col d-flex align-items-center justify-content-end">
								<i class="next10s-btn ti-arrow-circle-right"></i>
							</div>
						</div>
						<input type="range" value="0"
							class="progress-time form-range mt-3">
						<div class="mt-2 d-flex">
							<div
								class="text-start d-flex justify-content-start align-items-center">
								<span class="time-audio"> <span class="time-current">00:00:00</span><span
									class="time-separator"> / </span><span class="time-duration">00:00:00</span>
								</span>
							</div>
							<div
								class="col text-end d-flex justify-content-end align-items-center">
								<div class="volume me-2 d-flex align-items-center">
									<i class="ti-volume me-1"></i>
									<div class="volume-control">
										<input type="range" min="0" max="100" step="1" value="100"
											class="volume-range form-range"> <span
											class="volume-text"><span class="volume-text-value">100</span>%</span>
									</div>
								</div>
								<i class="setting ti-settings"></i>
							</div>
						</div>
						<c:choose>
							<c:when test="${currentPart.audio.substring(0,4)!='http'}">
								<audio class="audio">
									<source src='<c:url value="/audio?fname=audioMockTest/${currentPart.audio}"></c:url>' type="audio/mpeg">
								</audio>
							</c:when>
							<c:otherwise>
								<audio class="audio">
									<source src="${currentPart.audio}" type="audio/mpeg">
								</audio>
							</c:otherwise>
						</c:choose>
					</div>
					<div class="question-area">
						<div class="d-flex">
							<i class="ti-layout-grid2 me-2"></i>
							<h6>Bảng câu hỏi</h6>
						</div>
						<div class="question-container">
							<div class="row">
								<div class="col d-flex justify-content-start">
									<i class="icon-answered"></i>
									<p>Đã trả lời</p>
								</div>
								<div class="col d-flex justify-content-end">
									<i class="icon-notAnswered"></i>
									<p>Chưa trả lời</p>
								</div>
							</div>
							<ul>
								<c:set var="stt" value="0" scope="page"></c:set>
								<c:forEach items="${enrollTest.mockTests.listeningParts}" var="listeningPart">
									<c:forEach items="${listeningPart.answerTests}" var="answerTest" varStatus="status">
										<c:if test="${stt % 5 == 0 }">
											<li class="mt-4 d-flex justify-content-center">
										</c:if>
										
										<c:set var="isCorrect" value="${false}" />
										<c:if test="${not empty isCompleted}">
											<c:forEach items="${enrollTest.answerUsers}" var="answerUser">
												<c:if test="${answerTest.answerId.equals(answerUser.answerTest.answerId) 
												and answerTest.answerKey.equals(answerUser.answer)}">
													<c:set var="isCorrect" value="${true}"/>
												</c:if>
											</c:forEach>
										</c:if>
										
										
										<c:set var="isAnswered" value="${false}" />
										<c:if test="${empty isCompleted}">
											<c:forEach items="${enrollTest.answerUsers}" var="answerUser">
												<c:if test="${answerUser.answerTest.answerId.equals(answerTest.answerId) 
												and (not empty answerUser.answer)}">
													<c:set var="isAnswered" value="${true}" />
												</c:if>
											</c:forEach>
										</c:if>
										
										<c:choose>
										    <c:when test="${empty isCompleted and isAnswered}">
										    	<a href="#" class="number-question-item answered" enrollTestId="${enrollTest.enrrolId}"
										    	 answerTestId="${answerTest.answerId}">${answerTest.number}</a>
										    </c:when>
										    <c:when test="${not empty isCompleted and isCorrect}">
										    	<a href="#" class="number-question-item correct" enrollTestId="${enrollTest.enrrolId}"
										    	 answerTestId="${answerTest.answerId}">${answerTest.number}</a>
										    </c:when>
										    <c:when test="${not empty isCompleted and not isCorrect}">
										    	<a href="#" class="number-question-item incorrect" enrollTestId="${enrollTest.enrrolId}"
										    	 answerTestId="${answerTest.answerId}">${answerTest.number}</a>
										    </c:when>
										    <c:otherwise>
										        <a href="#" class="number-question-item" enrollTestId="${enrollTest.enrrolId}" 
										        answerTestId="${answerTest.answerId}">${answerTest.number}</a>
										    </c:otherwise>
										</c:choose>
	
										<c:if test="${stt % 5 == 4 }">
											</li>
										</c:if>
										<c:set var="stt" value="${stt + 1 }" scope="page"></c:set>
									</c:forEach>
								</c:forEach>
							</ul>
							<div class="row mt-3">
								<div class="col d-flex justify-content-start">
									<a href="#" class="btn-save-draft">Lưu nháp</a>
								</div>
								<div class="col d-flex justify-content-end">
									<a href="#" class="btn-submit-test">Nộp bài</a>
								</div>
							</div>
						</div>
					</div>
					<c:if test="${not empty isCompleted }">
						<div class="test-result-area">
							<div class="d-flex">
								<i class="ti-cup me-2"></i>
								<h6>Kết quả</h6>
							</div>
							<select class="test-history form-select mt-3">
								<option>Lịch sử làm bài lần 1</option>
								<option>Lịch sử làm bài lần 2</option>
								<option>Lịch sử làm bài lần 3</option>
							</select>
							<div class="test-score mt-3">
								<div class="d-flex align-items-center">
									<img
										src="https://i.pinimg.com/originals/20/ba/a2/20baa2e5826f7c93e0f32203851bcabf.png"
										alt="">
									<div>
										<h3 class="test-score-value">${enrollTest.score}</h3>
										<span>${numberOfCorrectAnswers} đáp án đúng / ${numberOfQuestTion} câu hỏi</span>
										</span>
									</div>
								</div>
							</div>
							<a href="#"
								class="a-btn mt-3 d-flex justify-content-center align-items-center">
								<h6>Quay về trang luyện đề</h6>
							</a> <a href="#"
								class="a-btn mt-3 d-flex justify-content-center align-items-center">
								<h6>Làm lại</h6>
							</a>
						</div>
					</c:if>
				</div>
				<div class="reading-session col-6">
					<div class="heading-container">
						<div class="row">
							<div class="col d-flex justify-content-start">
								<c:choose>
									<c:when test="${not empty prevPart}">
										<a href='<c:url value="/test/luyende_test?enrollTestId=${enrollTest.enrrolId}&prevPartId=${prevPart}"></c:url>'
										 class="prev-part d-flex">
											<div class="icon me-2 d-flex align-items-center justify-content-center">
												<i class="ti-arrow-left"></i>
											</div>
											<h6>Phần trước</h6>
										</a>
									</c:when>
									<c:otherwise>
										<a href="#" class="prev-part disabled d-flex">
											<div class="icon me-2 d-flex align-items-center justify-content-center">
												<i class="ti-arrow-left"></i>
											</div>
											<h6>Phần trước</h6>
										</a>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="col d-flex justify-content-center">
								<h6>PART</h6>
								<h6 class="part-number ms-2">${currentPartNumber}</h6>
							</div>
							<div class="col d-flex justify-content-end">
								<c:choose>
									<c:when test="${not empty nextPart}">
										<a href='<c:url value="/test/luyende_test?enrollTestId=${enrollTest.enrrolId}&nextPartId=${nextPart}"></c:url>' 
										class="next-part d-flex">
											<h6>Phần sau</h6>
											<div class="icon ms-2 d-flex align-items-center justify-content-center">
												<i class="ti-arrow-right"></i>
											</div>
										</a>
									</c:when>
									<c:otherwise>
										<a href="#" class="next-part disabled d-flex">
											<h6>Phần sau</h6>
											<div class="icon ms-2 d-flex align-items-center justify-content-center">
												<i class="ti-arrow-right"></i>
											</div>
										</a>
									</c:otherwise>
								</c:choose>
							</div>
						</div>
					</div>
					<div>
						<c:choose>
							<c:when test="${currentPart.image.substring(0,4)!='http'}">
								<img class="mt-3" src='<c:url value="/image?fname=imgMockTest/${currentPart.image}"></c:url>' alt="bai thi">
							</c:when>
							<c:otherwise>
								<img class="mt-3" src="${currentPart.image}" alt="bai thi">
							</c:otherwise>
						</c:choose>
						<!-- <img class="mt-3"
							src="https://ieltsdatio.edu.vn/wp-content/uploads/Picture1-910x1024.png"
							alt="bai thi"> -->
					</div>
				</div>
				<div class="col-3">
					<ul class="answer-container">
						<c:forEach items="${enrollTest.mockTests.listeningParts}" var="listeningPart">
							<c:if test="${listeningPart.partId == currentPartId}">
								<c:forEach items="${listeningPart.answerTests}" var="answerTest">
									<c:set var="answer" value="" />
									<c:forEach items="${enrollTest.answerUsers}" var="answerUser">
										<c:if test="${answerUser.answerTest.answerId.equals(answerTest.answerId) 
											and (not empty answerUser.answer)}">
											<c:set var="answer" value="${answerUser.answer}" />
										</c:if>
									</c:forEach>
									
									<c:if test="${not empty isCompleted}">
										<c:choose>
											<c:when test="${not empty answer and answer.equals(answerTest.answerKey)}">
												<li class="answer-item correct d-flex">
													<span class="number-question d-flex justify-content-center align-items-center">${answerTest.number}</span>
													<div class="col">
														<input class="answer-input" type="text" value="${answer}">
													</div>
												</li>
											</c:when>
											<c:otherwise>
												<li class="answer-item incorrect d-flex">
													<span class="number-question d-flex justify-content-center align-items-center">${answerTest.number}</span>
													<div class="col">
														<input class="answer-input" type="text" value="${answer}"> 
														<span class="correct-answer">${answerTest.answerKey}</span>
													</div>
												</li>
											</c:otherwise>
										</c:choose>
									</c:if>
									<c:if test="${empty isCompleted}">
										<li class="answer-item d-flex">
											<span class="number-question d-flex justify-content-center align-items-center">${answerTest.number}</span>
											<div class="col">
												<input class="answer-input not-completed" enrollTestId="${enrollTest.enrrolId}" answerTestId="${answerTest.answerId}" type="text" value="${answer}"> 
											</div>
										</li>
									</c:if>
								</c:forEach>
							</c:if>
						</c:forEach>
					</ul>
					<div class="text-center">
						<c:choose>
							<c:when test="${not empty nextPart}">
								<a class="btn-next-questions" href='<c:url value="/test/luyende_test?enrollTestId=${enrollTest.enrrolId}&nextPartId=${nextPart}"></c:url>'> Phần kế tiếp </a>
							</c:when>
							<c:otherwise>
								<a class="btn-next-questions disabled" href="#"> Phần kế tiếp </a>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>

		</div>
	</div>
	<script>
        const testTimer = document.querySelector('.test-time .timer');
        const player = document.querySelector('.audio-area .btn-toggle-play');
        const audio = document.querySelector('.audio-area .audio');
        const progressTimeAudio = document.querySelector('.audio-area .progress-time');
        const audioTimer = document.querySelector('.audio-area .time-audio');
        const progressVolume = document.querySelector('.audio-area .volume-range');
        const volumeText = document.querySelector('.audio-area .volume-text-value');
        
        //thử nghiệm
        document.querySelectorAll('.number-question-item').forEach((value)=>{
            value.addEventListener('click',()=>{
                var a = document.querySelector('.answer-item .answer-input');
                a.focus();
                console.log(a);
            });
        });
        //thử nghiệm


        var isPlaying = false;

        function convertSecondsToStringTime(seconds) {
            function addLeadingZero(number) {
                return number < 10 ? '0' + number : number;
            }
            var hourStr = Math.floor(seconds / 3600);
            var minuteStr = Math.floor((seconds % 3600) / 60);
            var secondStr = Math.floor(seconds % 60);
            return addLeadingZero(hourStr) + ":" + addLeadingZero(minuteStr) + ":" + addLeadingZero(secondStr);
        }

        //Xử lí khi audio đã tải thành công lên trình duyệt
        audio.addEventListener('loadedmetadata', function () {
        	console.log(audio.duration);
            if (audio.duration) {
                audioTimer.querySelector('.time-duration').textContent =
                    convertSecondsToStringTime(audio.duration);
            }
        });

        function setTestTime() {
            var valueNow = parseInt(testTimer.getAttribute('valuenow'));
            var valueMax = parseInt(testTimer.getAttribute('valuemax'));
            if(valueMax)
            {
                if (valueNow < valueMax) {
                    valueNow += 1;
                    testTimer.setAttribute('valueNow', valueNow);
                    timeRemaining = valueMax - valueNow;
                    var fomattedTime = convertSecondsToStringTime(timeRemaining);
                    testTimer.textContent = fomattedTime;
                }
                else {
                    fetch('http://localhost:8080/Ielts-listening2/api-luyende_test',
                        {
                            method:'PUT',
                            headers: { 'Content-Type': 'application/json' },
                            body: JSON.stringify({enrrolId: enrollTestId})
                        })
                    .then(resp => {
                        return resp.json();
                    })
                    .then(data => {
                        location.reload();
                    })
                    .catch(error => {
                        alert(error);
                    })
                }
            }
        }

        //xử lí khi click btn play
        player.onclick = () => {
            if (isPlaying) {
                audio.pause();
            } else {
                audio.play();
            }
        }

        audio.onplay = () => {
            isPlaying = true;
            player.classList.add('playing');
        };
        audio.onpause = () => {
            isPlaying = false;
            player.classList.remove('playing');
        };

        //Xử lí khi thời gian của audio thay đổi
        audio.ontimeupdate = () => {
            if (audio.duration) {
                const progressPercent = Math.floor((audio.currentTime / audio.duration) * 100);
                progressTimeAudio.value = progressPercent;
                audioTimer.querySelector('.time-current').textContent = convertSecondsToStringTime(audio.currentTime);
            }
        };

        //Xử lí khi giá trị của progress bị đổi
        progressTimeAudio.onchange = function (e) {
            const seekTime = (audio.duration / 100) * e.target.value;
            audio.currentTime = seekTime;
            if(audio.duration) {
                audio.play();
            }
        };
        progressTimeAudio.addEventListener('input', (e) => {
            if (isPlaying) {
                audio.pause();
            }
            audioTimer.querySelector('.time-current').textContent = convertSecondsToStringTime((audio.duration / 100) * e.target.value) 
        });

        progressVolume.oninput = (e) => {
            var value = e.target.value;
            audio.volume = value/100;
            volumeText.textContent = value;
        }

        //với các thẻ input đã chứa class đúng sai thì chỉ được đọc chứ không được phép ghi
        const listAnswer = document.querySelectorAll('.answer-item.incorrect .answer-input,.answer-item.correct .answer-input');
        listAnswer.forEach((p) => {
            p.setAttribute('readonly', 'readonly');
        });
        
        
        //Xử lí api lưu trả lời tự động
        document.querySelectorAll('#test .answer-input.not-completed').forEach(input => {
            input.onblur = (e) => {
                const answerInput = e.target;
                const data = {
                		answerUserId: {
                			answerId: answerInput.getAttribute('answerTestId'),
                			enrrolId: answerInput.getAttribute('enrollTestId')
                		},
                		answer: answerInput.value
                }
                var options = { method:"POST",
                        		body: JSON.stringify(data)
                        	  }
                fetch("http://localhost:8080/Ielts-listening2/api-luyende_test",options)
                .then(resp => {
                	return resp.json();
                })
                .then(enrollTest => {
                	const questionItem = document.querySelector('.question-container .number-question-item[answerTestId='+
                		data['answerUserId']['answerId']+'][enrollTestId='+data['answerUserId']['enrrolId']+']');
                	if (questionItem) {
                		if (enrollTest['answer'] === ''){
                			questionItem.classList.remove('answered');
                		}
                		else{
                			questionItem.classList.add('answered');
                		}
                	}
               		answerInput.value = enrollTest['answer'];
                })
                .catch(error => {
                	alert(error);
                })
            };
       });
        setTestTime()
        setInterval(setTestTime, 1000);
    </script>
</body>
</html>