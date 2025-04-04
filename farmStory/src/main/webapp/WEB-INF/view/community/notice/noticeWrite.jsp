<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>글쓰기</title>
<link rel="stylesheet" href="/farmStory/css/community/write.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<%@ include file="/../../header.jsp"%>

		<main>
			<div class="main_container">
				<div class="sub_top_container">
					<img src="/farmStory/images/sub_top_tit5.png" alt="커뮤니티">
				</div>
				<section>
					<aside>
						<div>
							<img src="/farmStory/images/sub_aside_cate5_tit.png" alt="커뮤니티">
						</div>
						<div>
							<a href="/farmStory/notice/noticeList.do"> <img
								src="/farmStory/images/sub_cate5_lnb1_ov.png" alt="공지사항">
							</a> <a href="/farmStory/todayMenu/todayMenuList.do"> <img
								src="/farmStory/images/sub_cate5_lnb2.png" alt="오늘의식단">
							</a> <a href="/farmStory/chef/chefList.do"> <img
								src="/farmStory/images/sub_cate5_lnb3.png" alt="나도요리사">
							</a> <a href="/farmStory/inquiry/inquiryList.do"> <img
								src="/farmStory/images/sub_cate5_lnb4.png" alt="1:1고객문의">
							</a> <a href="/farmStory/qna/qnaList.do"> <img
								src="/farmStory/images/sub_cate5_lnb5.png" alt="자주묻는질문">
							</a>
						</div>
					</aside>
					<article>
						<div class="nav_bar">
							<nav>
								<img src="/farmStory/images/sub_nav_tit_cate5_tit1.png" alt="공지사항">
							</nav>
							<div>
								<p>
									HOME > 커뮤니티 > <span style="color: #91ba23; font-weight: 700;">공지사항</span>
								</p>
							</div>
						</div>
						<div class="sub_page">
							<h1>글쓰기</h1>
							<form action="farmStory/notice/NoticeWrite.do" method="get"
							enctype="multipart/form-data">
								<table>
									<tr>
										<td>제목</td>
										<td><input type="text" name="title"
											placeholder="제목을 입력하세요." class="title" required></td>
									</tr>
									<tr>
										<td>내용</td>
										<td><textarea name="content" maxlength="1000"
												class="content" required></textarea></td>
									</tr>
									<tr>
										<td>파일</td>
										<td>
											<p>최대 2개 파일 첨부 가능, 각 파일당 최대 10MB까지 가능</p> <input type="file"
											name="file1" class="file1 file"> <input type="file"
											name="file2" class="file2 file">
										</td>
									</tr>
								</table>
								<div class="btnContainer">
									<button class="btn btnCancel">취소</button>
									<button class="btn btnSubmit" type="submit">작성완료</button>
								</div>
							</form>
						</div>
					</article>
				</section>
			</div>
		</main>

		<%@ include file="/../../footer.jsp"%>

	</div>
</body>
</html>