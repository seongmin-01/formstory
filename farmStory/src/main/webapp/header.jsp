<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<header>
    <div>
        <div class="top">
            <c:if test="${empty sessionScope.sessUser}">
            <div>
                <a href="/farmStory/index.do">HOME |</a>
                <a href="/farmStory/view/user/login.do">로그인 |</a>
                <a href="/farmStory/view/user/register.do">회원가입 |</a>
                <a href="/farmStory/inquiry/inquiryList.do">고객센터</a>
            </div>
            </c:if>
            <c:if test="${not empty sessionScope.sessUser and (sessUser.role == 'USER')}">
            <div>
                <a href="/farmStory/index.do">HOME |</a>
                <a href="/farmStory/view/user/logout.do">로그아웃 |</a>
                <a href="/farmStory/myInfo/myCart.do">나의정보 |</a>
                <a href="/farmStory/inquiry/inquiryList.do">고객센터</a>
            </div>
            </c:if>
            <c:if test="${not empty sessionScope.sessUser and (sessUser.role == 'ADMIN')}">
            <div>
                <a href="/farmStory/index.do">HOME |</a>
                <a href="/farmStory/view/user/logout.do">로그아웃 |</a>
                <a href="/farmStory/myInfo/myCart.do">나의정보 |</a>
                <a href="/farmStory/adminMain/list.do">관리자 |</a>
                <a href="/farmStory/inquiry/inquiryList.do">고객센터</a>
            </div>
            </c:if>
        </div>
    </div>
    
    <div>
        <article>
            <a href="/farmStory/index.do" class="logo">
                <img src="/farmStory/images/logo.png" alt="팜스토리 로고">
            </a>
            <a href="#" class="freeShipping">
                <img src="/farmStory/images/head_txt_img.png" alt="팜스토리 로고">
            </a>
        </article>
    </div>
    <div>
        <ul>
            <li>
                <a href="/farmStory/intro/greeting.do">
                    <img src="/farmStory/images/head_menu_line.png" alt="라인">
                    <img src="/farmStory/images/head_menu1.png" alt="팜스토리소개">
                </a>
            </li>
            <li>
                <a href="/farmStory/shopping/productList.do">
                    <img src="/farmStory/images/head_menu_badge.png" alt="30%" class="head_badge">
                    <img src="/farmStory/images/head_menu_line.png" alt="라인">
                    <img src="/farmStory/images/head_menu2.png" alt="장보기">
                </a>
            </li>
            <li>
                <a href="/farmStory/cropStory/cropStoryList.do?cate=cropStory">
                    <img src="/farmStory/images/head_menu_line.png" alt="라인">
                    <img src="/farmStory/images/head_menu3.png" alt="농작물이야기">
                </a>
            </li>
            <li>
                <a href="/farmStory/event/eventCalender.do">
                    <img src="/farmStory/images/head_menu_line.png" alt="라인">
                    <img src="/farmStory/images/head_menu4.png" alt="이벤트">
                </a>
            </li>
            <li>
                <a href="/farmStory/notice/noticeList.do">
                    <img src="/farmStory/images/head_menu_line.png" alt="라인">
                    <img src="/farmStory/images/head_menu5.png" alt="커뮤니티">
                </a>
            </li>
        </ul>
    </div>
</header>
