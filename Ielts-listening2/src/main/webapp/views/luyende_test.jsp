<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="<c:url value="../assets/fonts/themify-icons/themify-icons.css"></c:url>">
    <link rel="stylesheet" href="<c:url value="../assets/css/styleLuyenDeTest.css"></c:url>">
</head>
<body>
    <div id="test">
        <nav class="nav-test row">
            <div class="col-3 d-flex justify-content-start">
                <a href="#" class="btn-exit">
                    <i class="ti-angle-left me-1"></i>
                    <h6>Trở về</h6>
                </a>
                <img src="https://prep.vn/imgs/logo.png" alt="logo" class="logo">
            </div>
            <div class="col-6 d-flex justify-content-center">
                <div class="test-time">
                    <i class="ti-alarm-clock me-2"></i>
                    <h6 class="timer">00 : 00 : 00</h6>
                </div>
                <h3 class="d-flex align-items-center">CAM 18 - TEST 2</h3>
            </div>
            <div class="col-3 d-flex justify-content-end last-nav-test-items">
                <a href="#"><i class="ti-user "></i></a>
                <a href="#"><i class="ti-book"></i></a>
            </div>
        </nav>
        <div class="row test-headings">
            <div class="ps-4 col-2 d-flex">
                <i class="ti-headphone"></i>
                <h6>Đề bài</h6>
            </div>
            <div class="col-8 d-flex">
                <i class="ti-microphone"></i>
                <h6>Đề bài</h6>
            </div>
            <div class="col-2 d-flex">
                <i class="ti-bookmark-alt"></i>
                <h6>Trả lời</h6>
            </div>
        </div>
        <div class="test-content row">
            <div class="listening-session col-2">
                <div class="audio-area">
                    <div class="control row">
                        <div class="col text-start">
                            <div class="prev10s-btn">
                                <i class="ti-arrow-circle-left"></i>
                            </div>
                        </div>
                        <div class="col text-center">
                            <div class="btn-toggle-play rounded-circle">
                                <i class="icon-play ti-control-play"></i>
                                <i class="icon-pause ti-control-pause"></i>
                            </div>
                        </div>
                        <div class="col text-end">
                            <div class="next10s-btn">
                                <i class="ti-arrow-circle-right"></i>
                            </div>
                        </div>
                    </div>
                    <input type="range" class="progress form-range mt-3">
                    <div class="d-flex">
                        <div class="text-start d-flex justify-content-start align-items-center">
                            <span class="time-audio">
                                <span class="time-current">00:00:00</span><span class="time-separator"> / </span><span class="time-duration">00:36:45</span>
                            </span>
                        </div>
                        <div class="col text-end d-flex justify-content-end align-items-center">
                            <div class="volume me-2 d-flex align-items-center">
                                <i class="ti-volume me-1"></i>
                                <div class="volume-control">
                                    <input type="range" class="form-range volume-range">
                                    <span class="volume-text">100%</span>
                                </div>
                            </div>
                            <i class="setting ti-settings"></i>
                        </div>
                    </div>
                    <audio class="audio">
                        <source src="https://cms-artifacts.motionarray.com/content/motion-array/772/Corporate_Harmonics_mp3.mp3?Expires=2003734641521&Key-Pair-Id=K2ZDLYDZI2R1DF&Signature=lic-nd1pMzUpkh-PSxXaOx-6a0S~toPg83287IAlvS7fIcTgWSeghJftr8bhbkeDsDQHBXXOt03Ikj-XOqDkkVrJoOUdlP5Njr3nyt3xM8atgPNdG8lRFMyy7rH5o1QdizrFRc-LGgZKOH6l0VsOf2XeqOrvTOp4FdFKNs-lypViq4hRZLEdhuqzyEB231n4I1cGAVLDVTMesz24h910RDjc441d~McpxX3mBLg3EEwb0HAHSo4jYn0~i6Tg6DmXs1eL4NT80J5qOv-DpeolxEli26g9u7QU4q2EjHKtHDDJZNOtmNCKxrfNat9GIuiXWeBMNBseXGmtSsQ8ZiRoeA__" type="audio/mpeg">
                    </audio>
                </div>
                <div class="question-area">
                    <div class="d-flex">
                        <i class="ti-layout-grid2 me-2"></i>
                        <h6>Bảng câu hỏi</h6>
                    </div>
                    <div class="question-container">
                        <div class="row">
                            <div class="col text-start d-flex">
                                <i class="icon-answered"></i>
                                <p>Đã trả lời</p>
                            </div>
                            <div class="col text-end d-flex">
                                <i class="icon-notAnswered"></i>
                                <p>Chưa trả lời</p>
                            </div>
                        </div>
                        <div>
                            <div class="mt-3 d-flex justify-content-center">
                                <a href="#" class="question-number-item">1</a>
                                <a href="#" class="question-number-item answered">2</a>
                                <a href="#" class="question-number-item">3</a>
                                <a href="#" class="question-number-item">4</a>
                                <a href="#" class="question-number-item answered">5</a>
                            </div>
                            <div class="mt-3 d-flex justify-content-center">
                                <a href="#" class="question-number-item">6</a>
                                <a href="#" class="question-number-item">7</a>
                                <a href="#" class="question-number-item">8</a>
                                <a href="#" class="question-number-item">9</a>
                                <a href="#" class="question-number-item">10</a>
                            </div>
                            <div class="mt-3 d-flex justify-content-center">
                                <a href="#" class="question-number-item">11</a>
                                <a href="#" class="question-number-item answered">12</a>
                                <a href="#" class="question-number-item">13</a>
                                <a href="#" class="question-number-item">14</a>
                                <a href="#" class="question-number-item answered">15</a>
                            </div>
                            <div class="mt-3 d-flex justify-content-center">
                                <a href="#" class="question-number-item answered">16</a>
                                <a href="#" class="question-number-item">17</a>
                                <a href="#" class="question-number-item">18</a>
                                <a href="#" class="question-number-item">19</a>
                                <a href="#" class="question-number-item answered">20</a>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col text-start">
                                <button class="btn-save-draft">Lưu nháp</button>
                            </div>
                            <div class="col text-end">
                                <button class="btn-submit-test">Nộp bài</button>
                            </div>
                        </div>
                    </div>
                </div>
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
                            <div>
                                <img src="https://i.pinimg.com/originals/20/ba/a2/20baa2e5826f7c93e0f32203851bcabf.png" alt="">
                            </div>
                            <div>
                                <h3 class="test-score-value">8.5</h3>
                                <span>
                                    <span>37</span><span> đáp án đúng / </span><span>40</span><span> câu hỏi</span>
                                </span>
                            </div>
                        </div>
                    </div>
                    <div class="mock-test-page-btn mt-3">
                        <a href="#" class="text-center align-items-center">
                            <h6>Quay về trang luyện đề</h6>
                        </a>
                    </div>
                    <div class="retake-test-btn mt-3">
                        <a href="#" class="text-center align-items-center">
                            <h6>Làm lại</h6>
                        </a>
                    </div>
                </div>
            </div>
            <div class="reading-session col-8">
                <div class="heading-container row">
                    <div class="col d-flex justify-content-start">
                        <a href="#" class="prev-part disabled d-flex">
                            <div class="icon">
                                <i class="ti-arrow-left"></i>
                            </div>
                            <h6>Phần trước</h6>
                        </a>
                    </div>
                    <div class="col d-flex justify-content-center">
                        <h6>PART 1</h6>
                    </div>
                    <div class="col d-flex justify-content-end">
                        <a href="#" class="next-part d-flex">
                            <div class="icon">
                                <i class="ti-arrow-right"></i>
                            </div>
                            <h6>Phần sau</h6>
                        </a>
                    </div>
                </div>
                <div>
                    <img src="https://ieltsdatio.edu.vn/wp-content/uploads/Picture1-910x1024.png" alt="bai thi">
                </div>
            </div>
            <div class="answer-session col-2">
                <div class="answer-container" style="display: block;">
                    <div class="answer-item d-flex">
                        <p class="number-question">1</p>
                        <div>
                            <input class="answer-input" type="text">
                            <span class="correct-answer"></span>
                        </div>
                    </div>
                    <div class="answer-item incorrect d-flex">
                        <p class="number-question">2</p>
                        <div>
                            <input class="answer-input" type="text" value="trả lời gì đó">
                            <span class="correct-answer">Đáp án đúng đây nè</span>
                        </div>
                    </div>
                    <div class="answer-item correct d-flex">
                        <p class="number-question">3</p>
                        <div>
                            <input class="answer-input" type="text" value="trả lời gì đó">
                            <span class="correct-answer"></span>
                        </div>
                    </div>
                    <div class="answer-item d-flex">
                        <p class="number-question">4</p>
                        <div>
                            <input class="answer-input" type="text">
                            <span class="correct-answer"></span>
                        </div>
                    </div>
                </div>
                <div class="text-center">
                    <button class="btn-next-questions">
                        Phần kế tiếp
                    </button>
                </div>
            </div>
        </div>
    </div>
    <script>
        const testTimer = document.querySelector('.test-time .timer');
        const player = document.querySelector('.audio-area .btn-toggle-play');
        const audio = document.querySelector('.listening-session .audio-area .audio');
        const progress = document.querySelector('.audio-area .progress');
        const audioTimer = document.querySelector('.audio-area .time-audio');
        var isPlaying = false;

        testTimer.setAttribute('valuenow',13*60);
        testTimer.setAttribute('valuemax',40*60);

       

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
        audio.addEventListener('loadedmetadata', function() {
            if (audio.duration) {
                audioTimer.querySelector('.time-duration').textContent = 
                convertSecondsToStringTime(audio.duration);
            }
        });

        function setTestTime() {
            var valueNow = parseInt(testTimer.getAttribute('valuenow'));
            var valueMax = parseInt(testTimer.getAttribute('valuemax'));
            if (valueNow < valueMax) {
                valueNow += 1;
                testTimer.setAttribute('valueNow',valueNow);
                timeRemaining = valueMax - valueNow;
                var fomattedTime = convertSecondsToStringTime(timeRemaining);
                testTimer.textContent = fomattedTime;
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
                progress.value = progressPercent;
                var timeCurrent = audioTimer.querySelector('.time-current').textContent = convertSecondsToStringTime(audio.currentTime);
            }
        };

        //Xử lí khi giá trị của progress bị đổi
        progress.onchange = function (e) {
            const seekTime = (audio.duration / 100) * e.target.value;
            audio.currentTime = seekTime;
        };

        setTestTime()
        setInterval(setTestTime,1000);
    </script>
</body>
</html>