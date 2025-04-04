<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>약관</title>
    <link rel="stylesheet" href="/css/user/terms.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
<body>
    <div id="wrapper">
        <%@ include file="/../../header.jsp" %>

        <main id="user">
            <section>
                <h2>사이트 이용약관</h2>
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <textarea name="terms"></textarea>
                                <label>
                                    <input type="checkbox"/>
                                    <p>동의합니다.</p>
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <h2>개인정보 취급방침</h2>
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <textarea name="personal_data"></textarea>
                                <label>
                                    <input type="checkbox">
                                    <p>동의합니다.</p>
                                </label>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div>
                    <a href="#">취소</a>
                    <a href="#">다음</a>
                </div>
            </section>
        </main>

      <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>