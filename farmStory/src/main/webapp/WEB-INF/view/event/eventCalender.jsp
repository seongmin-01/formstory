<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>이벤트</title>
    <link rel="stylesheet" href="/farmStory/css/event/eventCalender.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@6.1.15/index.global.min.js"></script>
    <script src="/farmStory/js/eventCalendar.js"></script>
</head>
<body>
    <div id="wrapper">
	<%@ include file="/../../header.jsp" %>
        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/farmStory/images/sub_top_tit4.png" alt="이벤트">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/farmStory/images/sub_aside_cate4_tit.png" alt="이벤트">
                        </div>
                        <div>
                            <img src="/farmStory/images/sub_cate4_lnb1_ov.png" alt="이벤트" onclick="location.href='/farmStory/event/eventCalender.do'" class="aside_link">
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate4_tit1.png" alt="이벤트">
                            </nav>
                            <div>
                                <p>HOME > 이벤트 > <span style="color: #91ba23; font-weight: 700;">이벤트</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <div id='calendar'></div>
                        </div>
                    </article>
                </section>
            </div> 
        </main>

       <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>