<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인</title>
    <link rel="stylesheet" href="/farmStory/css/user/login.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<script>
	 const result = ${result != null ? result : 0};
		
		if(result == 100) {
			alert("아이디나 비밀번호가 다릅니다.\n다시 로그인 하세요.");
		} else if(result == 101){
			alert("로그아웃 되었습니다.");
		} else if(result == 102){
			alert("먼저 로그인 하세요.");
		}
	</script>
</head>
<body>
    <div id="wrapper">
	<%@ include file="/../../header.jsp" %>
        <main id="user">
            <section class="login">
                <form action="/farmStory/view/user/login.do" method="post">
                    <table>
                        <tbody>
                            <tr>
                                <td><img src="/farmStory/images/user/login_ico_id.png" alt="아이디"></td>
                                <td><input type="text" name="uid" placeholder="아이디 입력"></td>
                            </tr>
                            <tr>
                                <td><img src="/farmStory/images/user/login_ico_pw.png" alt="비밀번호"></td>
                                <td>
                                    <input type="password" name="pass" placeholder="비밀번호 입력"></td>
                            </tr>
                        </tbody>
                    </table>
                    <input type="submit" style="border-color: #bbbbbb;" value="로그인" class="btnLogin">
                </form>
                <div class="social_login">
                    <a href="#"><img src="/farmStory/images/user/naver_login.PNG" alt="네이버 로그인"></a>
                    <a href="#"><img src="/farmStory/images/user/kakao_login.PNG" alt="카카오 로그인"></a>
                    <a href="#"><img src="/farmStory/images/user/google_login.PNG" alt="구글 로그인"></a>
                </div>
                <div>
                    <h3>회원 로그인 안내</h3>
                    <p>아직 회원이 아니시면 회원으로 가입하세요.</p>
                    <div style="text-align: right;">
                        <a href="/farmStory/find/id_Find.do">아이디 | </a>
                        <a href="/farmStory/find/pass_Find_Result.do">비밀번호찾기 | </a>
                        <a href="/farmStory/view/user/register.do">회원가입</a>
                    </div>
                </div>
            </section>
        </main>

  		<%@ include file="/../../footer.jsp" %>
 
    </div>
</body>
</html>