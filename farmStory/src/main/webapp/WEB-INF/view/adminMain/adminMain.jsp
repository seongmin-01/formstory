<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>adminMain</title>
    <link rel="stylesheet" href="/farmStory/css/adminMain/adminMain.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com/" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100..900&display=swap" rel="stylesheet">
</head>
</head>
<body>
    <div id="wrapper">
    <%@include file="./_header.jsp"%>
        <main>
             <%@include file="./_aside.jsp"%>

            <section>
                <nav>관리자 메인</nav>
                <article class="art1">
                    <div class="main_hd">
                        <a href="#">상품현황</a>
                        <a href="#">+ 더보기 </a>
                    </div>
                    <table>
                            <tr class="table_hd">
                                <th>상품번호</th>
                                <th>상품명</th>
                                <th>구분</th>
                                <th>가격</th>
                                <th>재고</th>
                                <th>등록일</th>
                            </tr>
                          <c:forEach var="dto" items="${dtos}">
                            <tr class="table_bd1">
                                <td>${dto.pid}</td>
                                <td>${dto.pName}</td>
                                <td>${dto.types}</td>
                                <td>${dto.price}</td>
                                <td>${dto.stock}</td>
                                <td>${dto.pDate}</td>
                            </tr>
                          </c:forEach>
                           
                    </table>
                </article>

                <article class="art2">
                    <div class="main_hd">
                        <a href="#">주문현황</a>
                        <a href="#">+ 더보기</a>
                    </div>
                    <table>
                        <tr class="table_hd">
                            <th>주문번호</th>
                            <th>상품명</th>
                            <th>판매가격</th>
                            <th>수량</th>
                            <th>배송비</th>
                            <th>합계</th>
                            <th>주문자</th>
                            <th>주문일</th>
                        </tr>
                        <tr class="table_bd2">
                            <td>1011</td>
                            <td>사과 500g</td>
                            <td>4,000원</td>
                            <td>2개</td>
                            <td>3,000원</td>
                            <td>8,000원</td>
                            <td>홍길동</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="table_bd2">
                            <td>1011</td>
                            <td>사과 500g</td>
                            <td>4,000원</td>
                            <td>2개</td>
                            <td>3,000원</td>
                            <td>8,000원</td>
                            <td>홍길동</td>
                            <td>2023-01-01</td>
                        </tr>
                        <tr class="table_bd2">
                            <td>1011</td>
                            <td>사과 500g</td>
                            <td>4,000원</td>
                            <td>2개</td>
                            <td>3,000원</td>
                            <td>8,000원</td>
                            <td>홍길동</td>
                            <td>2023-01-01</td>
                        </tr>
                    </table>
                </article>

                <article class="art3">
                    <div class="main_hd">
                        <a href="#">회원현황</a>
                        <a href="#">+ 더보기</a>
                    </div>
                    <table>
                        <tr class="table_hd">
                            <th>회원아이디</th>
                            <th>이름</th>
                            <th>닉네임</th>
                            <th>휴대폰</th>
                            <th>이메일</th>
                            <th>등급</th>
                            <th>회원가입일</th>
                        </tr>
                   <c:forEach var="user" items="${requestScope.users}">
                            <tr class="table_bd1">
                                <td class="check"><input type="checkbox"></td>
                     
                                <td>${user.name}</td>
                                <td>${user.nick}</td>
                                <td>${user.hp}</td>
                                <td>${user.email}</td>
                                <td><option value="lank" class="op">${user.role}</option></td>
                                <td>${user.regDate}</td>
                              
                            </tr>
                   </c:forEach>
                    
                     </table>
                     
                </article>
            </section>
        </main>
        <%@ include file="./_footer.jsp" %>
    </div>
</body>
</html>