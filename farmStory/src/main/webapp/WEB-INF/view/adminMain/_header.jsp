<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<header>
	<a href="/farmStory/adminMain/list.do">
		<img src="/farmStory/images/admin/admin_logo.jpg" alt="hd_logo" class="hd_logo">
	</a>
	<c:if test="${not empty sessionScope.sessUser}">
	<ul>
	    <li><a href="/farmStory/index.do" class="link">HOME&nbsp;|&nbsp;</a></li>
	    <li><a href="/farmStory/view/user/logout.do" class="link">로그아웃&nbsp;|&nbsp;</a></li>
	    <li><a href="/farmStory/notice/noticeList.do" class="link">고객센터</a></li>
	</ul>
	</c:if>
</header>