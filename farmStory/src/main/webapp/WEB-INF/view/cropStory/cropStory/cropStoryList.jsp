<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>농작물이야기</title>
<link rel="stylesheet" href="/farmStory/css/cropStory/cropStory.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap"
	rel="stylesheet">
</head>
<body>
	<div id="wrapper">
		<%@ include file="/../../../header.jsp"%>
		<main>
			<div class="main_container">
				<div class="sub_top_container">
					<img src="/farmStory/images/sub_top_tit3.png" alt="인트로">
				</div>
				<section>
					<aside>
						<div>
							<img src="/farmStory/images/sub_aside_cate3_tit.png" alt="농작물이야기">
						</div>
						<div>
							<a href="/farmStory/cropStory/cropStoryList.do?cate=cropStory">
								<img src="/farmStory/images/sub_cate3_lnb1_ov.png" alt="농작물이야기">
							</a> 
							<a href="/farmStory/gardening/gardeningList.do?cate=gardening">
								<img src="/farmStory/images/sub_cate3_lnb2.png" alt="텃밭가꾸기">
							</a> 
							<a href="/farmStory/farmingSchool/farmingSchoolList.do?cate=farmingSchool">
								<img src="/farmStory/images/sub_cate3_lnb3.png" alt="귀농학교">
							</a>
						</div>
					</aside>
					<article>
						<div class="nav_bar">
							<nav>
								<img src="/farmStory/images/sub_nav_tit_cate3_tit1.png"
									alt="농작물이야기">
							</nav>
							<div>
								<p>
									HOME > 농작물이야기 > <span style="color: #91ba23; font-weight: 700;">농작물이야기</span>
								</p>
							</div>
						</div>
						<div class="sub_page">
							<div class="sub_page_section">
								<section>
									<nav>
										<p>글목록</p>
										<form action="/farmStory/cropStory/cropStorySearch.do">
											<input type="hidden" name="cate" value="cropStory"/>
											<select name="searchType" style="padding: 6px;">
					                    		<option value="title">제목</option>
					                    		<option value="content">내용</option>
					                    		<option value="nick">글쓴이</option>
					                    	</select>
											<input type="text" name="keyword" placeholder="제목 키워드, 글쓴이 검색" class="searchBox">
											<input type="submit" value="검색" class="searchBtn">
										</form>
									</nav>
									<table width="100%">
										<tr id="table_header" height="41px">
											<td width="63px">번호</td>
											<td width="auto">제목</td>
											<td width="92px">글쓴이</td>
											<td width="130px">날짜</td>
											<td width="60px">조회</td>
										</tr>
										<c:if test="${empty articles}">
											<tr>
												<td colspan="5" class="emptyArticles">첫 게시글을 등록해주세요!</td>
											</tr>
										</c:if>
										<c:set var="pageStartNum" value="${pageStartNum}" />
										<c:forEach var="article" items="${requestScope.articles}">
											<tr id="table_body" height="41px">
												<td>${pageStartNum}</td>
												<td>
													<a href="/farmStory/cropStory/cropStoryView.do?cate=cropStory&postNo=${article.postNo}">${article.title}[${article.comment}]</a>
												</td>
												<td>${article.nick}</td>
												<td>${article.wdate}</td>
												<td>${article.hit}</td>
											</tr>
											<c:set var="pageStartNum" value="${pageStartNum - 1}" />
										</c:forEach>

									</table>
									<div class="page">
										<c:if test="${pageGroupDTO.start > 1}">
											<a
												href="/farmStory/cropStory/cropStoryList.do?cate=cropStory&pg=${pageGroupDTO.start - 1}"
												class="prev">이전</a>
										</c:if>
										<c:forEach var="num" begin="${pageGroupDTO.start}"
											end="${pageGroupDTO.end}">
											<a href="/farmStory/cropStory/cropStoryList.do?cate=cropStory&pg=${num}"
												class="num ${currentPage == num ? 'current':''}">${num}</a>
										</c:forEach>
										<c:if test="${pageGroupDTO.end < lastPageNum}">
											<a
												href="/farmStory/cropStory/cropStoryList.do?cate=cropStory&pg=${pageGroupDTO.end + 1}"
												class="next">다음</a>
										</c:if>
										<c:if test="${not empty sessUser}">
											<a href="/farmStory/cropStory/cropStoryWrite.do" class="btn btnWrite">글쓰기</a>
										</c:if>
									</div>

								</section>

							</div>
						</div>

					</article>
				</section>
			</div>
		</main>

		<%@ include file="/../../footer.jsp"%>

	</div>
</body>
</html>