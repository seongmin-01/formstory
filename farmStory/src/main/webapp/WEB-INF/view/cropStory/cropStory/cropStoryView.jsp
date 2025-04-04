<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>농작물이야기</title>
    <link rel="stylesheet" href="/farmStory/css/cropStory/viewText.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
	<script>
	document.addEventListener('DOMContentLoaded', function(){
	    console.log('DOMContentLoaded...');

	    const commentList = document.getElementsByClassName('commentList')[0];
	    const formComment = document.getElementById('commentForm');

	    // 댓글 등록
	    formComment.onsubmit = function(e){
	        e.preventDefault();

	        const postNo = formComment.postNo?.value;
	        const nick = formComment.nick?.value;
	        const content = formComment.content?.value;

	        const formData = new FormData();
	        formData.append('postNo', postNo);
	        formData.append('nick', nick);
	        formData.append('content', content);
	        console.log(formData);

	        fetch('/farmStory/comment/commentWrite.do', {
	            method: 'POST',
	            body: formData
	        })
	        .then(response => response.json())
	        .then(data => {
	            console.log(data);

	            if(data != null){
	                alert('댓글 등록이 완료되었습니다.');
	                const article = `<div class="commentContainer">
	                                    <p class="date_author">${data.wdate} ${data.nick}</p>
	                                    <p class="comment">${data.content}</p>
	                                    <div class="remove_edit">
	                                        <input type="hidden" name="postNo" value="${data.postNo}">
	                                        <a href="/farmStory/comment/remove.do?cno=${data.cno}&postNo=${data.postNo}">삭제</a>
	                                        <a href="#" class="editCommentBtn" data-cno="${data.cno}" data-postno="${data.postNo}">수정</a>
	                                    </div>
	                                </div>`;

	                commentList.insertAdjacentHTML('beforeend', article);
	                formComment.content.value = '';
	                location.href = "/farmStory/cropStory/cropStoryView.do?postNo=" + postNo;
	            }else{
	                alert('댓글 등록 실패 했습니다.');
	            }
	        })
	        .catch(err => {
	            console.log(err);
	        });
	    }

	    // 댓글 수정 버튼 클릭 이벤트
	    commentList.addEventListener('click', function(e) {
	        if (e.target.classList.contains('editCommentBtn')) {
	            e.preventDefault();
	            const cno = e.target.dataset.cno;
	            const postNo = e.target.dataset.postno;
	            const editForm = document.querySelector(`.editCommentForm[data-cno="${cno}"]`);
	            editForm.style.display = 'block';
	        }

	        if (e.target.classList.contains('editCancelBtn')) {
	            e.preventDefault();
	            const cno = e.target.dataset.cno;
	            const editForm = document.querySelector(`.editCommentForm[data-cno="${cno}"]`);
	            editForm.style.display = 'none';
	        }
	    });

	    // 댓글 수정 폼 제출 이벤트
	    commentList.addEventListener('submit', function(e) {
	        if (e.target.classList.contains('editCommentForm')) {
	            e.preventDefault();

	            const editForm = e.target;
	            const cno = editForm.cno.value;
	            const postNo = editForm.postNo.value;
	            const content = editForm.content.value;

	            const formData = new FormData();
	            formData.append('cno', cno);
	            formData.append('postNo', postNo);
	            formData.append('content', content);

	            fetch('/farmStory/comment/modify.do', {
	                method: 'POST',
	                body: formData
	            })
	            .then(response => response.json())
	            .then(data => {
	                console.log(data);

	                if (data != null) {
	                    // 댓글 목록 갱신 또는 수정된 댓글 내용으로 업데이트
	                    const commentContainer = e.target.closest('.commentContainer');
	                    commentContainer.querySelector('.comment').textContent = data.content;
	                    editForm.style.display = 'none';
	                } else {
	                    alert('댓글 수정 실패했습니다.');
	                }
	            })
	            .catch(err => {
	                console.log(err);
	            });
	        }
	    });
	});


</script>
    

</head>
<body>
    <div id="wrapper">
	<%@ include file="/../../../header.jsp" %>
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
                                <img src="/farmStory/images/sub_nav_tit_cate3_tit1.png" alt="농작물이야기">
                            </nav>
                            <div>
                                <p>HOME > 농작물이야기 > <span style="color: #91ba23; font-weight: 700;">농작물이야기</span></p>
                            </div>
                        </div>
                        <div class="sub_page">
                            <h1>글보기</h1>
                            <form action="/farmStory/cropStory/cropStoryView.do">
                            	<input type="hidden" name="postNo" value="${articledto.postNo}"/>
                            	<input type="hidden" name="cate" value="cropStory"/>
                                <table>
                                    <tr>
                                        <td>제목</td>
                                        <td>
                                            <input type="text" name="title" value="${articledto.title}" class="title" readonly>
                                        </td>
                                    </tr>
                                    <c:if test="${articledto.file > 0}">
	                                    <tr>
	                                        <td>파일</td>
	                                        <td>
	                                        	<c:forEach var="file" items="${articledto.files}">
	                                        		<a href="/farmStory/file/download.do?fno=${file.fno}">${file.oName} </a><span>${file.download}회 다운로드</span><br>
	                                        	</c:forEach>
	                                        	
	                                        </td>
	                                    </tr>
	                                </c:if>
                                    <tr>
                                        <td>내용</td>
                                        <td>
                                            <textarea name="content" maxlength="1000" class="content" readonly>${articledto.content}</textarea>
                                        </td>
                                    </tr>
                                </table>
                               </form>
                               <div class="btnContainer1">
	                               <c:if test="${articledto.uid eq sessUser.uid}">
	                                    <button class="btn2" onclick="location.href='/farmStory/cropStory/cropStoryRemove.do?postNo=${articledto.postNo}'">삭제</button>
	                                    <button class="btn2" onclick="location.href='/farmStory/cropStory/cropStoryEdit.do?postNo=${articledto.postNo}'">수정</button>
	                                    <button class="btn2" onclick="location.href='/farmStory/cropStory/cropStoryList.do'">목록</button>
	                            	</c:if>
                                </div>
                                <section class="commentList">
                                	<c:if test="${empty sessUser}">
                                    	<p class="comment_sub_titleIsEmpty">로그인 후 댓글을 작성해주세요!</p>
                                    </c:if>
                                	<c:if test="${empty comments and not empty sessUser}">
                                    	<p class="comment_sub_titleIsEmpty">첫 댓글을 작성해주세요!</p>
                                    </c:if>
                                	<c:if test="${comment.cno > 0}">
                                    	<h3 class="comment_sub_title">댓글목록</h3>
                                    </c:if>
                                    <c:forEach var="comment" items="${comments}">
									    <div class="commentContainer">
									        <p class="date_author">${comment.wdate} ${comment.nick}</p>
									        <p class="comment">${comment.content}</p>
									        <div class="remove_edit">
									            <input type="hidden" name="postNo" value="${articledto.postNo}">
									            <c:if test="${comment.nick eq sessUser.nick}">
									            	<a href="/farmStory/comment/remove.do?cno=${comment.cno}&postNo=${articledto.postNo}">삭제</a>
									            	<a href="#" class="editCommentBtn" data-cno="${comment.cno}" data-postno="${articledto.postNo}">수정</a>
									        	</c:if>
									        </div>
									    </div>
									    <!-- 댓글 수정 폼 (숨겨진 상태) -->
									    <form class="editCommentForm" data-cno="${comment.cno}" style="display: none;">
									        <input type="hidden" name="cno" value="${comment.cno}">
									        <input type="hidden" name="postNo" value="${articledto.postNo}">
									        <textarea name="content" maxlength="100">${comment.content}</textarea>
									        <div class="btnContainer2">
									            <button type="button" class="btn btnCancel editCancelBtn" data-cno="${comment.cno}">취소</button>
									            <button type="submit" class="btn btnComplete">수정 완료</button>
									        </div>
									    </form>
									</c:forEach>
                                </section>
                                <c:if test="${not empty sessUser}">
	                                <section class="writeComment">
	                                    <h3 class="comment_sub_title">댓글쓰기</h3>
	                                    <form action="/farmStory/comment/commentWrite.do" method="post" id="commentForm">
	                                    	<input type="hidden" name="postNo" value="${articledto.postNo}">
	                                    	<input type="hidden" name="nick" value="${sessUser.nick}">
	                                        <textarea name="content" maxlength="100" placeholder="댓글 입력" required></textarea>
	                                        <div class="btnContainer2">
	                                            <input type="submit" value="작성완료" class="btn btnComplete"/>
	                                        </div>
	                                    </form>
	                                </section>
                                </c:if>
                        	</div>
                    </article>
                </section>
            </div> 
        </main>

        <%@ include file="/../../footer.jsp" %>
        
    </div>
</body>
</html>