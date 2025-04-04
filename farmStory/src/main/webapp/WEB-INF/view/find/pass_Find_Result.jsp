<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>find::pass_Find_Result</title>
    <link rel="stylesheet" href="/farmStory/css/find/pass_Find_Result.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
          <%@ include file="/../../header.jsp" %>
        <main>
            <section class="id_find">             
                <form action="#">
                    <h2>비밀번호 찾기</h2>
                    <table>
                        <tbody>
                            <tr>
                                <td>아이디</td>
                                <td><input type="text" name="uid" placeholder="아이디 입력"></td>
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td>
                                    <div>
                                        <input type="email" name="email" placeholder="이메일 입력"/>
                                        <button>인증번호 받기</button>
                                    </div>
                                    <div>
                                        <input type="text" name="auth_code" placeholder="인증번호 입력">
                                        <button>확인</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <p>
                    비밀번호를 찾고자 하는 아이디와 이메일을 입력해 주세요. <br>
                    회원가입시 입력한 아이디와 이메일 주소가 같아야, 인증번호를 받을 수 있습니다. <br>
                    인증번호를 입력 후 확인 버튼을 누르세요.
                </p>
                <div>
                    <a href="/farmStory/view/user/login.do">취소</a>
                    <a href="./pass_Change.do">다음</a>
                </div>
            </section>
        </main>

       <%@ include file="/../../footer.jsp" %>
</body>
</html>