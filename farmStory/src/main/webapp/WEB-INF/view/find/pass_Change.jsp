<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>find::pass_change</title>
    <link rel="stylesheet" href="/farmStory/css/find/pass_Change.css">
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
                    <h2>비밀번호 변경</h2>
                    <table>
                        <tbody>
                            <tr>
                                <td>아이디</td>
                                <td>honggildong</td>
                            </tr>
                            <tr>
                                <td>새 비밀번호</td>
                                <td>
                                    <input type="pass" name="pass1" placeholder="새 비밀번호 입력">
                                </td>
                            </tr>
                            <tr>
                                <td>새 비밀번호 확인</td>
                                <td>
                                    <input type="pass" name="pass2" placeholder="새 비밀번호 입력">
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
                <p>
                    비밀번호를 변경해 주세요. <br>
                    영문, 숫자, 특수문자를 사용하여 8자 이상 입력해 주세요.
                </p>
                <div>
                    <a href="">취소</a>
                    <a href="#">다음</a>
                </div>
            </section>
        </main>
        
      <%@ include file="/../../footer.jsp" %>
</body>
</html>