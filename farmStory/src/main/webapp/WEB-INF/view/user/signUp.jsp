<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <link rel="stylesheet" href="/farmStory/css/user/signUp.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script src="/farmStory/js/daumPostcode.js"></script>
    <script src="/farmStory/js/validation.js"></script>
</head>
<body>
    <div id="wrapper">
    <%@ include file="/../../header.jsp" %>    
        <main id="user">
            <section class="register">

                <form action="/farmStory/view/user/register.do" name="formRegister" method="post">
                    <h2 class="tit">사이트 이용정보 입력</h2>
                    <table border="1">                        
                        <tr>
                            <td>아이디</td>
                            <td>
                                <input type="text" name="uid" placeholder="아이디 입력"/>
                                <button type="button" id="btnCheckUid"><img src="/farmStory/images/user/chk_id.gif" alt="중복확인"/></button>
                                <span class="uidResult"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>비밀번호</td>
                            <td>
                              <input type="password" name="pass1" placeholder="비밀번호 입력"/>
                            <span class="passResult"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>비밀번호 확인</td>
                            <td><input type="password" name="pass2" placeholder="비밀번호 입력 확인"/></td>
                        </tr>
                    </table>

                    <h2 class="tit">개인정보 입력</h2>
                    <table border="1">                        
                        <tr>
                            <td>이름</td>
                            <td>
                                <input type="text" name="name" placeholder="이름 입력"/>                        
                              <span class="nameResult"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>별명</td>
                            <td>
                                <p class="nickInfo">공백없는 한글, 영문, 숫자 입력</p>
                                <input type="text" name="nick" placeholder="별명 입력" maxlength="10"/>
                                <button type="button" id="btnCheckNick"><img src="/farmStory/images/user/chk_id.gif" alt="중복확인"/></button>
                                <span class="nickResult"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>이메일</td>
                            <td>
                                <input type="email" name="email" placeholder="이메일 입력"/>
                                <button type="button" id="btnSendEmail"><img src="/farmStory/images/user/chk_auth.gif" alt="인증번호 받기"/></button>
                                <span class="emailResult"></span>
                                <div class="auth">
                                    <input type="text" name="auth" placeholder="인증번호 입력"/>
                                    <button type="button" id="btnAuthEmail"><img src="/farmStory/images/user/chk_confirm.gif" alt="확인"/></button>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td>휴대폰</td>
                            <td>
                              <input type="text" name="hp" placeholder="휴대폰 입력"/>
                              <span class="hpResult"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>주소</td>
                            <td>
                                <input type="text" name="zip" id="postcode" placeholder="우편번호" readonly/>
                                <button type="button" onclick="DaumPostcode()"><img src="/farmStory/images/user/chk_post.gif" alt="우편번호찾기"/></button>
                                <input type="text" name="addr1" id="address" placeholder="주소 검색" readonly/>
                                <input type="text" name="addr2" id="detailAddress" placeholder="상세주소 입력"/>
                            </td>
                        </tr>
                    </table>

                    <div>
                        <a href="/farmStory/view/user/login.do" class="btn btnCancel">취소</a>
                        <input type="submit" value="회원가입" class="btn btnRegister"/>
                    </div>

                </form>

            </section>
        </main>
        
        <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>