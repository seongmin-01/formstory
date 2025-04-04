<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>인사말</title>
    <link rel="stylesheet" href="/farmStory/css/intro/greeting.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
	<%@ include file="/../../header.jsp" %>
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
                            <img src="/farmStory/images/sub_cate1_lnb1_ov.png" alt="인사말" onclick="location.href='/farmStory/intro/greeting.do'" class="aside_link">
                            <img src="/farmStory/images/sub_cate1_lnb2.png" alt="찾아오시는길" onclick="location.href='/farmStory/intro/contact.do'" class="aside_link">
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate1_tit1.png" alt="인사말">
                            </nav>
                            <div>
                                <p>HOME > 팜스토리소개 > <span style="color: #91ba23; font-weight: 700;">인사말</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <img src="/farmStory/images/sub_page1_article_txt.png" alt="건강한 먹거리를...">
                            <div class="sub_page_p">
                                <p>
                                    항상 저희 팜스토리를 성원해 주시고 관심을 가져주시는 모든 분들께 감사의 인사를 드리며<br>
                                    가정에 건강과 행복이 가득하시길 기원합니다.
                                </p>
                                <p>
                                    팜스토리는 신선하고 안전한 먹거리로 건강한 삶 만들기에 기여합니다.<br>
                                    보다 좋은 농산품을 공급하기 위해 화학비료를 쓰지 않는 건강한 흙에서 유기농업으로 정성을 다해 지은 농사를 통해 믿고 먹을 수 있는 먹거리 제<br>
                                    공에 앞장서겠습니다.
                                </p>
                                <p>
                                    <span style="color: #91ba23; font-weight: 700;">친환경 농장</span><br>
                                    팜스토리는 경기도 이천에 위치한 10만평 규모의 유기농 재배단지입니다.
                                </p>
                                <p>
                                    <span style="color: #91ba23; font-weight: 700;">친환경 캠페인</span><br>
                                    팜스토리는 2차 포장재 사용을 줄임으로써 친환경적인 포장과, 친환경적인 소비문화 정착을 위해 노력합니다.
                                </p>
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