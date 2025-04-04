<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>find::id_Find</title>
    <link rel="stylesheet" href="/farmStory/css/find/id_Find.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
         <%@ include file="/../../header.jsp" %>
        <main>
            <section class="id_find">             
                <form action="/find/id_Find.do" method="post">
                    <h2>아이디 찾기</h2>
                    <table>
                        <tbody>
                            <tr>
                                <td>이름</td>
                                <td><input type="text" name="name" placeholder="이름 입력"></td>
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
                                        <button type="submit">확인</button>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <p>회원가입시 이메일 주소와 입력한 이메일 주소가 같아야, 인증번호를 받을 수 있습니다.<br>
                    인증번호를 입력 후 확인 버튼을 누르세요.
                </p>
                <div>
                    <a href="/farmStory/view/user/login.do">취소</a>
                    <a href="./id_Find_Result.do">다음</a>
                </div>
            </section>
        </main>
        
        <%@ include file="/../../footer.jsp" %>
</body>
</html>