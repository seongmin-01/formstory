<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>텃밭가꾸기</title>
    <link rel="stylesheet" href="/farmStory/css/cropStory/gardening.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
	<%@ include file="/../../../header.jsp" %>
        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/farmStory/images/sub_top_tit3.png" alt="인트로">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/farmStory/images/sub_aside_cate3_tit.png" alt="농작물이야기">
                        </div>
                          <div>
                            <a href="/farmStory/cropStory/cropStoryList.do?cate=cropStory">
                              <img src="/farmStory/images/sub_cate3_lnb1.png" alt="농작물이야기">
                            </a> 
                            <a href="/farmStory/gardening/gardeningList.do?cate=gardening">
                              <img src="/farmStory/images/sub_cate3_lnb2_ov.png" alt="텃밭가꾸기">
                            </a> 
                            <a href="/farmStory/farmingSchool/farmingSchoolList.do?cate=farmingSchool">
                              <img src="/farmStory/images/sub_cate3_lnb3.png" alt="귀농학교">
                            </a>
                          </div>
                        </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate3_tit2.png" alt="텃밭가꾸기">
                            </nav>
                            <div>
                                <p>HOME > 농작물이야기 > <span style="color: #91ba23; font-weight: 700;">텃밭가꾸기</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                                <div class="sub_page_section">
                                    <section>
                                        <p>글목록</p>
                                        <nav>
                                            <form action="/farmStory/gardeningList.do">
                                                <input type="text" placeholder="제목 키워드, 글쓴이 검색" class="searchBox">
                                                <input type="submit" value="검색" class="searchBtn">
                                            </form>
                                        </nav>
                                        <table width="100%" >
                                            <tr id="table_header" height="41px">
                                                <td>번호</td>
                                                <td>제목</td>
                                                <td>글쓴이</td>
                                                <td>날짜</td>
                                                <td>조회</td>
                                            </tr>
                                            <tr id="table_body" height="41px">
                                                <td>1</td>
                                                <td>공지사항 게시물입니다.[3]</td>
                                                <td>길동이</td>
                                                <td>2025-02-18</td>
                                                <td>12</td>
                                            </tr>
                                        </table>
                                        <div>
                                            <a href="#">이전</a>
                                            <a href="#">1</a>
                                            <a href="#">2</a>
                                            <a href="#">3</a>
                                            <a href="#">다음</a>
                                            <c:if test="${not empty sessUser}">
                                            	<a href="/farmStory/gardening/gardeningWrite.do">글쓰기</a>
                                            </c:if>
                                        </div>
                                    </section>
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