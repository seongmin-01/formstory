<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>정보수정</title>
    <link rel="stylesheet" href="/farmStory/css/myInfo/modifyInfo.css">
    <link rel="stylesheet" href="/farmStory/css/modal/modal.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="/farmStory/js/daumPostcode.js"></script>
    <script src="/farmStory/js/validation2.js"></script>
    <script src="/farmStory/js/modal.js"></script>
</head>

<body>
	<%@ include file="../modal/modal.jsp" %>
    <div id="wrapper">
        <%@ include file="/../../header.jsp" %>
        <main>
            <div class="main_container">
                <div class="sub_top_container">
                    <img src="/farmStory/images/myinfo/myinfo_top_tit.png" alt="나의정보">
                </div>
                <section>
                    <aside>
                        <div>
                            <img src="/farmStory/images/myinfo/myinfo_menu_tit.png" alt="나의정보">
                        </div>
                        <div>
                            <a href="/farmStory/myInfo/myCart.do">
                                <img src="/farmStory/images/myinfo/myinfo_menu1.png" alt="장바구니">
                            </a>
                            <a href="/farmStory/myInfo/myOrder.do">
                                <img src="/farmStory/images/myinfo/myinfo_menu2.png" alt="주문내역">
                            </a>
                            <a href="/farmStory/myInfo/modifyInfo.do">
                                <img src="/farmStory/images/myinfo/myinfo_menu3_ov.png" alt="정보수정">
                            </a>
                        </div>
                    </aside>
                    <article>
                        <div class="nav_bar">
                            <nav>
                                <img src="/farmStory/images/myinfo/myinfo_nav_tit3.png" alt="정보수정">
                            </nav>
                            <div>
                                <p>HOME > 나의정보 > <span style="color: #91ba23; font-weight: 700;">정보수정</span></p>
                            </div>
                        </div>

                        <section>
                            <form action="/farmStory/myInfo/modifyInfo.do" method="post" name="formRegister">
                                <p>회원정보 설정</p>
                                <table class="table_1">
                                    <tr>
                                        <td class="td_left">아이디</td>
                                        <td>${user.uid}</td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">새 비밀번호</td>
                                        <td>
                                            <input type="password" name="pass1" placeholder="새 비밀번호 입력">
                                            <span class="passResult"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">새 비밀번호 확인</td>
                                        <td>
                                            <input type="password" name="pass2" placeholder="새 비밀번호 입력">
                                            <button type="submit" formaction="/farmStory/myInfo/modifyPass.do">
                                                <p class="editPassBtn">비밀번호 수정</p>
                                            </button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">회원가입날짜</td>
                                        <td>${user.regDate}</td>
                                    </tr>
                                </table>

                                <p class="my">개인정보 수정</p>
                                <table class="table_2">
                                    <tr>
                                        <td class="td_left">이름</td>
                                        <td>
                                            <input type="text" name="name" value="${user.name}">
                                            <span class="nameResult"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">별명</td>
                                        <td>
                                            <p>공백없는 한글, 영문, 숫자 입력</p>
                                            <div class="div_btn">
                                                <input type="text" name="nick" placeholder="별명 입력" value="${user.nick}">
                                                <img src="/farmStory/images/myinfo/chk_id.gif" id="btnCheckNick" alt="중복확인" style="cursor: pointer;">
                                                <span class="nickResult"></span>
                                            </div>
                                        </td>
                                    </tr>

                                    <tr class="emailBox">
                                        <td class="td_left">이메일</td>
                                        <td>
                                            <div class="div_btn">
                                                <input type="text" name="email" placeholder="이메일 입력" value="${user.email}">
                                                <img src="/farmStory/images/myinfo/chk_auth.gif" id="btnSendEmail" alt="인증번호 받기" style="cursor: pointer;">
                                                <span class="emailResult"></span>
                                            </div>
                                            <div class="auth">
                                                <input type="text" name="auth" placeholder="인증번호 입력" />
                                                <img src="/farmStory/images/user/chk_confirm.gif" id="btnAuthEmail" alt="확인" style="cursor: pointer;" />
                                            </div>
                                        </td>
                                    </tr>


                                    <tr>
                                        <td class="td_left">휴대폰</td>
                                        <td>
                                            <input type="text" name="hp" placeholder="휴대폰 입력" value="${user.hp}">
                                            <span class="hpResult"></span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">주소</td>
                                        <td class="addr_td">
                                            <div class="div_btn">
                                                <input type="text" id="postcode" name="zip" placeholder="우편번호" value="${user.zip}" readonly>
                                                <button type="button" onclick="DaumPostcode()"><img src="/farmStory/images/myinfo/chk_post.gif" alt="우편번호찾기"></button><br>
                                            </div>
                                            <input type="text" id="address" name="addr1" placeholder="주소검색" class="addr_input" value="${user.addr1}" readonly><br>
                                            <input type="text" id="detailAddress" name="addr2" placeholder="상세주소 입력" class="addr_input" value="${user.addr2}">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="td_left">회원탈퇴</td>
                                        <td><button type="button" class="button1" id="delete-btn">탈퇴하기</button></td>
                                    </tr>
                                </table>
                                <div class="btn1">
                                    <a href="/farmStory/myInfo/modifyInfo.do">취소</a>
                                    <input type="submit" value="회원수정" style="cursor: pointer;">
                                </div>
                            </form>
                        </section>
                    </article>
                </section>
            </div>
        </main>
        <%@ include file="/../../footer.jsp" %>
    </div>
</body>

</html>