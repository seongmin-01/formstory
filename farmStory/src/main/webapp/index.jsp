<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>팜스토리</title>
    <link rel="stylesheet" href="./css/main.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">  
	<%@ include file="./header.jsp" %>
        <main>
            <div>
                <div class="main_slide_container">
                    <img src="./images/main_slide_img1.jpg" alt="메인이미지">
                    <img src="./images/main_slide_img_tit.png" alt="텍스트">
                    <div class="event">
                        <div>
                            <img src="./images/main_banner_txt.png" alt="">
                            <img src="./images/main_banner_tit.png" alt="">
                            <img src="./images/main_banner_img.png" alt="">
                        </div>
                    </div>
                </div>
                <img src="./images/main_market_tit.png" alt="장보기" class="tits">
                <section>
                    <article>
                        <a href="#">
                            <img src="./images/market_item1.jpg" alt="사과">
                        </a>
                        <p>과일</p>
                        <p>사과<br>500g</p>
                        <p><del>4,000</del> <span class="discount10">10%↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#">
                            <img src="./images/market_item2.jpg" alt="사과">
                        </a>
                        <p>과일</p>
                        <p>사과<br>500g</p>
                        <p><del>4,000</del> <span class="discount10">10%↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#">
                            <img src="./images/market_item3.jpg" alt="사과">
                        </a>
                        <p>과일</p>
                        <p>사과<br>500g</p>
                        <p><del>4,000</del> <span class="discount10">10%↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#">
                            <img src="./images/market_item4.jpg" alt="사과">
                        </a>
                        <p>과일</p>
                        <p>사과<br>500g</p>
                        <p><del>4,000</del> <span class="discount10">10%↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#">
                            <img src="./images/market_item5.jpg" alt="사과">
                        </a>
                        <p>과일</p>
                        <p>사과<br>500g</p>
                        <p><del>4,000</del> <span class="discount10">10%↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                    <article>
                        <a href="#">
                            <img src="./images/market_item6.jpg" alt="사과">
                        </a>
                        <p>과일</p>
                        <p>사과<br>500g</p>
                        <p><del>4,000</del> <span class="discount10">10%↓</span></p>
                        <h3>3,600원</h3>
                    </article>
                </section>
                <div class="main_banner_sub_container">
                    <a href="/farmStory/todayMenu/todayMenuList.do">
                        <img src="./images/main_banner_sub1_tit.png" alt="오늘의식단">
                    </a>
                    <a href="/farmStory/chef/chefList.do">
                        <img src="./images/main_banner_sub2_tit.png" alt="나도요리사">
                    </a>
                </div>
                <div class="main_latest_container">
                    <div>
                        <div>
                            <a href="/farmStory/gardening/gardeningList.do">
                                <img src="./images/main_latest1_tit.png" alt="텃밭가꾸기 텍스트" class="main_latest_tit">
                            </a>
                        </div>
                        <img src="./images/main_latest1_img.jpg" alt="텃밭가꾸기 이미지">
                        <table>
							<tr>
		                        <c:forEach var="article" items="${requestScope.articles}">
									<td>
										<a href="/farmStory/cropStory/cropStoryView.do?postNo=${article.postNo}">${article.title}</a>
										<span>${article.wdate}</span>
									</td>
								</c:forEach>
							</tr>
                        </table>
                    </div>
                    <div>
                        <div>
                            <a href="/farmStory/farmingSchool/farmingSchoolList.do">
                                <img src="./images/main_latest2_tit.png" alt="귀농학교 텍스트" class="main_latest_tit">
                            </a>
                        </div>
                        <img src="./images/main_latest2_img.jpg" alt="귀농학교 이미지">
                        <table>
                            <tr>
                                <c:forEach var="article" items="${requestScope.articles}">
									<td>
										<a href="/farmStory/cropStory/cropStoryView.do?postNo=${article.postNo}">${article.title}</a>
										<span>${article.wdate}</span>
									</td>
								</c:forEach>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <div>
                            <a href="/farmStory/cropStory/cropStoryList.do">
                                <img src="./images/main_latest3_tit.png" alt="농작물이야기 텍스트" class="main_latest_tit">
                            </a>
                        </div>
                        <img src="./images/main_latest3_img.jpg" alt="농작물이야기 이미지">
                        <table>
                            <tr>
                                <c:forEach var="article" items="${requestScope.articles}">
									<td>
										<a href="/farmStory/cropStory/cropStoryView.do?postNo=${article.postNo}">${article.title}</a>
										<span>${article.wdate}</span>
									</td>
								</c:forEach>
                            </tr>
                        </table>
                    </div>
                </div>
                <div class="main_sub2_container">
                    <div>
                        <div>
                            <img src="./images/main_sub2_cs_tit.png" alt="고객센터안내">
                        </div>
                        <div>
                            <img src="./images/main_sub2_cs_img.png" alt="전화">
                            <img src="./images/main_sub2_cs_txt.png" alt="전화">
                            <p>
                                평일: AM 09:00 ~ PM 06:00<br>
                                점심: PM 12:00 ~ PM 01:00<br>
                                토, 일요일, 공휴일 휴무
                            </p>
                        </div>
                        <div>
                            <a href="/farmStory/inquiry/inquiryList.do">
                                <img src="./images/main_sub2_cs_bt1.png" alt="1:1 고객문의">
                            </a>
                            <a href="/farmStory/qna/qnaList.do">
                                <img src="./images/main_sub2_cs_bt2.png" alt="자주묻는 질문">
                            </a>
                            <a href="#">
                                <img src="./images/main_sub2_cs_bt3.png" alt="배송 조회">
                            </a>
                        </div>
                    </div>
                    <div>
                        <div>
                            <img src="./images/main_sub2_account_tit.png" alt="고객센터안내">
                        </div>
                        <p>
                            기업은행 123-456789-01-01-012<br>
                            국민은행 01-1234-56789<br>
                            우리은행 123-456789-01-01-012<br>
                            하나은행 123-456789-01-01<br>
                            예 금 주 (주)팜스토리
                        </p>
                    </div>
                    <div>
                        <div>
                            <img src="./images/main_sub2_notice_tit.png" alt="공지사항">
                        </div>
                        <table>
                            <tr>
                                <td>
                                    <a href="#">· 안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                                    <p>20-12-22</p>
                                </td>
                                <td>
                                    <a href="#">· 안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                                    <p>20-12-22</p>
                                </td>
                                <td>
                                    <a href="#">· 안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                                    <p>20-12-22</p>
                                </td>
                                <td>
                                    <a href="#">· 안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                                    <p>20-12-22</p>
                                </td>
                                <td>
                                    <a href="#">· 안녕하세요. 홈페이지 오픈 기념 이벤트를 ...</a>
                                    <p>20-12-22</p>
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </main>
	<%@ include file="./footer.jsp" %>
    </div>
</body>
</html>