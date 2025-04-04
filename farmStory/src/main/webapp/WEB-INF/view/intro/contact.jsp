<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>찾아오시는길</title>
    <link rel="stylesheet" href="/farmStory/css/intro/contact.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<%@ include file="/../../header.jsp" %>
</head>
<body>
    <div id="wrapper">

        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/farmStory/images/sub_top_tit1.png" alt="인트로">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/farmStory/images/sub_aside_cate1_tit.png" alt="팜스토리소개">
                        </div>
                        <div>
                            <img src="/farmStory/images/sub_cate1_lnb1.png" alt="인사말" onclick="location.href='/farmStory/intro/greeting.do'" class="aside_link">
                            <img src="/farmStory/images/sub_cate1_lnb2_ov.png" alt="찾아오시는길" onclick="location.href='/farmStory/intro/contact.do'" class="aside_link">
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate1_tit2.png" alt="찾아오시는길">
                            </nav>
                            <div>
                                <p>HOME > 팜스토리소개 > <span style="color: #91ba23; font-weight: 700;">찾아오시는길</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <div class="sub_page_p">
                                <p>
                                    <span style="color: #91ba23; font-weight: 700;">팜스토리</span><br>
                                    주소: 경기도 이천시 잘한다구 신난다동 123<br>
                                    전화: 01-234-5678
                                </p>
                                <p>
                                    <span style="color: #91ba23; font-weight: 700;">찾아오시는길</span><br>
                                </p>
                                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3261.0597793341053!2d129.07202137637717!3d35.18006257275311!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x356893545e9bb879%3A0xb3fe515128fe55dd!2z67aA7IKw6rSR7Jet7IucIOyXsOygnOq1rCDspJHslZnrjIDroZwgMTAwMQ!5e0!3m2!1sko!2skr!4v1739175569540!5m2!1sko!2skr" width="760" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                            </div>
                        </div>
                    </article>
                </section>
            </div> 
        </main>

        <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>