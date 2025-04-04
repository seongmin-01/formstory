<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>농작물이야기</title>
    <link rel="stylesheet" href="/farmStory/css/cropStory/write.css">
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
								<img src="/farmStory/images/sub_cate3_lnb1_ov.png" alt="농작물이야기">
							</a> 
							<a href="/farmStory/gardening/gardeningList.do?cate=gardening">
								<img src="/farmStory/images/sub_cate3_lnb2.png" alt="텃밭가꾸기">
							</a> 
							<a href="/farmStory/farmingSchool/farmingSchoolList.do?cate=farmingSchool">
								<img src="/farmStory/images/sub_cate3_lnb3.png" alt="귀농학교">
							</a>
						</div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate3_tit1.png" alt="농작물이야기">
                            </nav>
                            <div>
                                <p>HOME > 농작물이야기 > <span style="color: #91ba23; font-weight: 700;">농작물이야기</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <h1>글수정</h1>
                            <form action="/farmStory/cropStory/cropStoryEdit.do" method="post" enctype="multipart/form-data">
                                <input type="hidden" name="postNo" value="${articledto.postNo}" class="postNo">
                                <input type="hidden" name="cate" value="cropStory"/>
                                <table>
                                    <tr>
                                        <td>제목</td>
                                        <td>
                                            <input type="text" name="title" value="${articledto.title}" class="title" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>내용</td>
                                        <td>
                                            <textarea name="content" maxlength="1000" class="content" required>${articledto.content}</textarea>
                                        </td>
                                    </tr>
                                    <tr>
								    <td>파일</td>
								    <td>
								        <p>최대 2개 파일 첨부 가능, 각 파일당 최대 10MB까지 가능</p>
								        
								        
								    </td>
								</tr>
                                </table>
                                <div class="btnContainer">
                                    <button class="btn btnCancel" onclick="location.href='/farmStory/cropStory/cropStoryView.do?postNo='${articledto.postNo}">취소</button>
                                    <button class="btn btnSubmit" type="submit">수정완료</button>
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