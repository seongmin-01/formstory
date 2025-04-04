<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
                            <a href="/farmStory/gardening/gardeningList.do">
                                <img src="/farmStory/images/sub_cate3_lnb2_ov.png" alt="텃밭가꾸기">
                            </a>
                            <a href="/farmStory/farmingSchool/farmingSchoolList.do">
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
                            <h1>글보기</h1>
                            <form action="/farmStory/gardeningView.do">
                                <table>
                                    <tr>
                                        <td>제목</td>
                                        <td>
                                            <input type="text" name="title" value="제목입니다." class="title" readonly>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>파일</td>
                                        <td>
                                            <p>2021년 상반기 매출현황.xls (7회) <a href="#">다운로드</a></p>
                                            <p>교육 운영 관리자료.hwp (7회) <a href="#">다운로드</a></p>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>내용</td>
                                        <td>
                                            <textarea name="content" maxlength="1000" class="content" readonly></textarea>
                                        </td>
                                    </tr>
                                </table>
                                <div class="btnContainer1">
                                    <button class="btn2">삭제</button>
                                    <button class="btn2">수정</button>
                                    <button class="btn2">목록</button>
                                </div>
                            </form>
                            <form action="#">
                                <div class="commentList">
                                    <h3 class="comment_sub_title">댓글목록</h3>
                                    <div class="commentContainer">
                                        <p class="date_author">2024-05-20 홍길동이</p>
                                        <p class="comment">댓글 샘플입니다.</p>
                                        <div class="remove_edit">
                                            <a href="#">삭제</a>
                                            <a href="#">수정</a>
                                        </div>
                                    </div>
                                    <div class="commentContainer">
                                        <p class="date_author">2024-05-20 홍길동이</p>
                                        <p class="comment">댓글 샘플입니다.</p>
                                        <div class="remove_edit">
                                            <a href="#">삭제</a>
                                            <a href="#">수정</a>
                                        </div>
                                    </div>
                                    <div class="commentContainer">
                                        <p class="date_author">2024-05-20 홍길동이</p>
                                        <p class="comment">댓글 샘플입니다.</p>
                                        <div class="remove_edit">
                                            <a href="#">삭제</a>
                                            <a href="#">수정</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="writeComment">
                                    <h3 class="comment_sub_title">댓글쓰기</h3>
                                    <div>
                                        <textarea name="comment" maxlength="100" placeholder="댓글 입력" required></textarea>
                                        <div class="btnContainer2">
                                            <button class="btn btnSubmit" type="submit">작성완료</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </article>
                </section>
            </div> 
        </main>

        <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>