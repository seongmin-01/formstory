<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>귀농학교</title>
    <link rel="stylesheet" href="/farmStory/css/cropStory/FarmingSchool.css">
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
                            <img src="/farmStory/images/sub_aside_cate3_tit.png" alt="텃밭가꾸기">
                        </div>
                        <div>
                            <a href="/farmStory/cropStory/cropStoryList.do?cate=cropStory">
                                <img src="/farmStory/images/sub_cate3_lnb1.png" alt="농작물이야기">
                            </a>
                            <a href="/farmStory/gardening/gardeningList.do">
                                <img src="/farmStory/images/sub_cate3_lnb2.png" alt="텃밭가꾸기">
                            </a>
                            <a href="/farmStory/farmingSchool/farmingSchoolList.do">
                                <img src="/farmStory/images/sub_cate3_lnb3_ov.png" alt="귀농학교">
                            </a>
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/sub_nav_tit_cate3_tit3.png" alt="귀농학교">
                            </nav>
                            <div>
                                <p>HOME > 농작물이야기 > <span style="color: #91ba23; font-weight: 700;">귀농학교</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <h1>글수정</h1>
                            <form action="/farmStory/farmingSchoolEdit.do" method="post"
                            enctype="multipart/form-data">
                                <table>
                                    <tr>
                                        <td>제목</td>
                                        <td>
                                            <input type="text" name="title" placeholder="제목을 입력하세요." class="title" required>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>내용</td>
                                        <td>
                                            <textarea name="content" maxlength="1000" class="content" required></textarea>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>파일</td>
                                        <td>
                                            <p>최대 2개 파일 첨부 가능, 각 파일당 최대 10MB까지 가능</p>
                                            <input type="file" name="file1" class="file1 file">
                                            <input type="file" name="file2" class="file2 file">
                                        </td>
                                    </tr>
                                </table>
                                <div class="btnContainer">
                                    <button class="btn btnCancel">취소</button>
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