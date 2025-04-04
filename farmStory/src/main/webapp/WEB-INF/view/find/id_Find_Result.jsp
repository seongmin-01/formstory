	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>find::id_Find_Result</title>
    <link rel="stylesheet" href="/farmStory/css/find/id_Find_Result.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <%@ include file="/../../header.jsp" %>
        <main>
            <section>
                <form action="#">
                    <h2>아이디 찾기 결과</h2>
                    <table>
                        <tbody>
                            <tr>
                                <td>이름</td>
                                <td>홍길동</td>
                            </tr>
                            <tr>
                                <td>아이디</td>
                                <td>honggildong</td>
                            </tr>
                            <tr>
                                <td>이메일</td>
                                <td>honggildong@gmail.com</td>
                            </tr>
                            <tr>
                                <td>가입일</td>
                                <td>2022-11-16 10:20</td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <p>고객님의 정보와 일치하는 아이디 입니다.</p>
                <div>
                    <a href="/farmStory/view/user/login.do">로그인</a>
                    <a href="./pass_Find_Result.do">비밀번호 찾기</a>
                </div>
            </section>
        </main>
        
     <%@ include file="/../../footer.jsp" %>
</body>
</html>